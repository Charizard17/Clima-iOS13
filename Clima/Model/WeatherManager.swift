//
//  WeatherManager.swift
//  Clima
//
//  Created by Esad Dursun on 12.06.23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

private var apiKey: String {
  get {
    // 1
    guard let filePath = Bundle.main.path(forResource: "SECRET", ofType: "plist") else {
      fatalError("Couldn't find file 'SECRET.plist'.")
    }
    // 2
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "API_KEY") as? String else {
      fatalError("Couldn't find key 'API_KEY' in 'SECRET.plist'.")
    }
    return value
  }
}

struct WeatherManager {
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?units=metric&appid=API_KEY"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherUrl)&q=\(cityName)"
        print("Api Key: \(apiKey)")
        print(urlString)
    }
}
