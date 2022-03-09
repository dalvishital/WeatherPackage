//
//  ApiStruct.swift
//  WeatherPackage
//
//  Created by Clouds Mac1 on 06/03/22.
//

import Foundation




public struct ApiResponse: Codable {
    public let lat, lon: Double
    public let timezone: String
    public let timezoneOffset: Int
    public let current: Current
    public let minutely: [Minutely]

    enum CodingKeys: String, CodingKey {
        case lat, lon, timezone
        case timezoneOffset = "timezone_offset"
        case current, minutely
    }
}

// MARK: - Current
public struct Current: Codable {
    public let dt, sunrise, sunset: Int
    public let temp, feelsLike: Double
    public let pressure, humidity: Int
    public let dewPoint, uvi: Double
    public let clouds, visibility: Int
    public let windSpeed: Double
    public let windDeg: Int
    public let weather: [Weather]
    public let rain: Rain

    enum CodingKeys: String, CodingKey {
        case dt, sunrise, sunset, temp
        case feelsLike = "feels_like"
        case pressure, humidity
        case dewPoint = "dew_point"
        case uvi, clouds, visibility
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case weather, rain
    }
}

// MARK: - Rain
public struct Rain: Codable {
    public let the1H: Double

    enum CodingKeys: String, CodingKey {
        case the1H = "1h"
    }
}

// MARK: - Weather
public struct Weather: Codable {
    public let id: Int
    public let main, weatherDescription, icon: String

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription = "description"
        case icon
    }
}

// MARK: - Minutely
public struct Minutely: Codable {
    public let dt: Int
    public let precipitation: Double
}
