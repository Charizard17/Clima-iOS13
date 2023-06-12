//
//  WeatherManager.swift
//  Clima
//
//  Created by Esad Dursun on 12.06.23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?units=metric&appid=API_KEY"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherUrl)&q=\(cityName)"
        print("Api Key: \(openWeatherApiKey)")
        print(urlString)
    }
}
