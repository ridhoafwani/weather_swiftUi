//
//  ForecastModel.swift
//  weather
//
//  Created by Muhammad Zikrurridho Afwani on 07/04/24.
//

import Foundation

struct DailyForecast: Identifiable {
    var id: UUID = UUID()
    var day: String
    var imageName: String
    var forecast: String
}
