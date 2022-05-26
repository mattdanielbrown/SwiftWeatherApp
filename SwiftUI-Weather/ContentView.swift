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
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack {
                CityTextView(cityName: "Marseille")
                
                DateTextView(dateOfTheDay: "Jeudi 26 mai 2022")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 27)
                
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
                
                Button {
                    print("Tapped")
                } label: {
                Text("Change Day time")
                        .frame(width: 200, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
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

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct DateTextView: View {
    
    var dateOfTheDay: String
    
    var body: some View {
        Text(dateOfTheDay)
            .font(.system(size: 20, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
