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
    
    init(URL:String)
    {
        self.URLString = URL
    }//AIzaSyAyT3AvRfrkfc9zieHd8NkTv16O5ftN-4c

    public func getweatherData()
    {
        URLSession.shared.dataTask(with: URL(string: self.URLString!)!) { Data, response, error in
            if error == nil && Data?.count != 0 && response != nil
            {
                let decoder = JSONDecoder()
                do{
                    let result = try decoder.decode(ApiResponse.self, from: Data!)
                    print(result.id)
                }catch
                {
                    
                }
            }
        }.resume()
    }
}
//https://api.openweathermap.org/data/2.5/onecall/timemachine?lat=60.99&lon=30.9&dt=1586468027&appid=AIzaSyAyT3AvRfrkfc9zieHd8NkTv16O5ftN-4c

