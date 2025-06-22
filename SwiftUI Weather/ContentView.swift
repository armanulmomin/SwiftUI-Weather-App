//
//  ContentView.swift
//  SwiftUI Weather
//
//  Created by Arman on 21/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            VStack{
                CityTextView(cityName: "Sydney, Australia")
                WeatherStatus(imageName: isNight ? "moon.stars.fill" : "sun.max.fill", temperatue: "76°C")
                Spacer()
                HStack(spacing: 10){
                    
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: "76")
                        .frame(maxWidth: .infinity)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: "76")
                        .frame(maxWidth: .infinity)
                    WeatherDayView(dayOfWeek: "THU", imageName: "sun.max.fill", temperature: "76")
                        .frame(maxWidth: .infinity)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sun.max.fill", temperature: "76")
                        .frame(maxWidth: .infinity)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sun.max.fill", temperature: "76")
                        .frame(maxWidth: .infinity)
                    
                    
                    
                }
                .padding(16)
                Spacer()
                Button{
                    isNight.toggle()
                } label: {
                    ButtonView(title: "Change Day Time",
                               textColor: Color.white,
                               backgroundColor: Color.blue
                    )
                }
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
    var imageName: String
    var temperature: String
    var body: some View {
        VStack{
            Text(dayOfWeek)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 15, height: 15)
            Text("\(temperature)")
        }
    }
}

struct BackgroundView: View {
     var isNight : Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text("\(cityName)")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct WeatherStatus: View {
    var imageName: String
    var temperatue: String
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperatue)")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}


