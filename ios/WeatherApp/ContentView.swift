//
//  ContentView.swift
//  Weather
//
//  Created by simoco apps on 25/2/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight, topColor: isNight ? .black : .blue, botColor: Color("lightBlue"))
            VStack {
                Text("The Six Dutchies")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                Text("Sunday")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                
                VStack (spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("32°C")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    
                }
                .padding(.bottom, 40)
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "MON", systemImageName: "cloud.sun.fill", temperature: 32)
                    WeatherDayView(dayOfWeek: "TUE", systemImageName: "snow", temperature: 32)
                    WeatherDayView(dayOfWeek: "WED", systemImageName: "tornado", temperature: 32)
                    WeatherDayView(dayOfWeek: "THU",systemImageName: "hurricane", temperature: 32)
                    WeatherDayView(dayOfWeek: "FRI", systemImageName: "wind.snow", temperature: 32)
                    WeatherDayView(dayOfWeek: "SAT", systemImageName: "wind.snow", temperature: 32)
                }
                Spacer()
                WeatherButton(buttonTitle: "Change Region", buttonAction: { isNight.toggle() }, buttonColor: Color.white)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var systemImageName: String
    var temperature: Int
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundStyle(.white)
            Image(systemName: systemImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            Text("\(temperature)°C")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView : View {
    @Binding var isNight: Bool
    var topColor: Color
    var botColor : Color
    var body: some View {
        LinearGradient(colors: [topColor, botColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
