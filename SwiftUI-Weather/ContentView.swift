 //
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Sammy Merazga on 26/05/2022.
//  26:43

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Marseille")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                Text("Jeudi 26 mai 2022 ")
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("27°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "VEN",
                                   imageName: "sun.max.fill",
                                   temperature: 30)
                    WeatherDayView(dayOfWeek: "SAM",
                                   imageName: "wind",
                                   temperature: 28)
                    WeatherDayView(dayOfWeek: "DIM",
                                   imageName: "sun.max.fill",
                                   temperature: 25)
                    WeatherDayView(dayOfWeek: "LUN",
                                   imageName: "sun.max.fill",
                                   temperature: 24)
                    WeatherDayView(dayOfWeek: "MAR",
                                   imageName: "sun.max.fill",
                                   temperature: 25)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
