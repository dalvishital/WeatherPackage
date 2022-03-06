//
//  ApiStruct.swift
//  WeatherPackage
//
//  Created by Clouds Mac1 on 06/03/22.
//

import Foundation


struct ApiResponse : Decodable
{
    var id : Int
    var main,description,icon:String
}
