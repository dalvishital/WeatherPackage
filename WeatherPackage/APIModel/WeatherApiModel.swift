//
//  WeatherApiModel.swift
//  WeatherPackage
//
//  Created by Clouds Mac1 on 06/03/22.
//

import Foundation

public class ApiModelClass
{
    public var URLString : String?
    
    public init(URL:String)
    {
        self.URLString = URL
    }

    public func getweatherData()
    {
        URLSession.shared.dataTask(with: URL(string: self.URLString!)!) { Data, response, error in
            if error == nil && Data?.count != 0 && response != nil
            {
                let decoder = JSONDecoder()
                do{
                    let result = try decoder.decode(ApiResponse.self, from: Data!)
                    print(result)
                }catch
                {
                    
                }
            }
        }.resume()
    }
}


//https://api.openweathermap.org/data/2.5/onecall?lat=33.44&lon=-94.04&exclude=current,daily&appid=5444f314a00622bd7493db14d571c2a0
