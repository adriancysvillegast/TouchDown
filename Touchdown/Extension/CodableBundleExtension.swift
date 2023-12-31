//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 9/8/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1. locate file
        guard let url =  self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        //2. property for data
        guard let data = try? Data(contentsOf: url)  else {
            fatalError("Faild to load \(file) from bundle")
        }
        //3. decoder
        let decoder = JSONDecoder()
        
        //4. property for decode dat
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            fatalError("Faild to decode \(file) from bundle")
        }
        
        //5. return result
        return decodeData
    }
}
