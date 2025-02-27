//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by simoco apps on 27/2/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns : columns) {
                    // id: \.id keypath is id
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
        }
        .navigationTitle(Text("Apple Frameworks"))
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

struct FrameworkTitleView : View {
    let framework : Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 100, height: 100)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6) // Smallest scale is 50% of minium size
        }
        .padding()
    }
}
