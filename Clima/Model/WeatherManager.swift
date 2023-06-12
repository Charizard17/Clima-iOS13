//
//  WeatherManager.swift
//  Clima
//
//  Created by Esad Dursun on 12.06.23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?units=metric&appid=\(openWeatherApiKey)"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherUrl)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        
        // 1- Create Url
        if let url = URL(string: urlString) {
            
            // 2- Create an URLSession
            let session = URLSession(configuration: .default)
            
            // 3- Give the session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            // 4- Start the task
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}
