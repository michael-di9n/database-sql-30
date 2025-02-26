//
//  WeatherButton.swift
//  Weather
//
//  Created by simoco apps on 26/2/2025.
//

import SwiftUI

struct WeatherButton : View {
    var buttonTitle: String
    var buttonAction: () -> Void
    var buttonColor: Color
    
    var body: some View {
        Button {
            buttonAction()
        } label: {
            Text(buttonTitle)
                .frame(width: 280, height: 50)
                .background(buttonColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(10)
        }
    }
}
