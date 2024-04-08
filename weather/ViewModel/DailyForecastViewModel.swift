//
//  DailyForecastViewModel.swift
//  weather
//
//  Created by Muhammad Zikrurridho Afwani on 07/04/24.
//

import Foundation

class DailyForecastViewModel : ObservableObject {
    var dailyForecasts = [
            DailyForecast(day: "TUE", imageName: "sun.max.fill", forecast: "25"),
            DailyForecast(day: "WED", imageName: "wind", forecast: "14"),
            DailyForecast(day: "THU", imageName: "cloud.drizzle.fill", forecast: "18"),
            DailyForecast(day: "FRI", imageName: "cloud.fill", forecast: "22"),
            DailyForecast(day: "SAT", imageName: "snow", forecast: "4"),
        ]
}
