//
//  ContentView.swift
//  weather
//
//  Created by Muhammad Zikrurridho Afwani on 06/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    private var dailyForecasts = DailyForecastViewModel().dailyForecasts
    
    var body: some View {
        ZStack {
            BackgorundView(isNight: isNight)
            
            VStack {
                CityNameView(cityName: "Batam, ID")
                
                Spacer()
                
                TodayForecastView(imageName: isNight ? "moon.stars.fill" : "sun.max.fill", temperature: 27)
                
                Spacer()
                
                HStack(spacing: 20) {
                    ForEach (dailyForecasts) {  dailyForecast in
                        NextDayForecastView(day: dailyForecast.day, imageName: dailyForecast.imageName, forecast: dailyForecast.forecast)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    isNight.toggle()
                }) {
                    ButtonView(title: "Change Day Time", backgroundColor: .mint)
                }
                
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}

struct NextDayForecastView: View {
    var day : String
    var imageName : String
    var forecast : String
    
    
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(forecast)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgorundView: View {
    var isNight: Bool

    var body: some View {
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.purple.gradient)
            .ignoresSafeArea()
    }
}

struct CityNameView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct TodayForecastView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Today")
                .font(.system(size: 40, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
