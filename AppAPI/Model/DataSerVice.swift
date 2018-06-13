//
//  DataSerVice.swift
//  AppAPI
//
//  Created by Ngọc Anh on 6/11/18.
//  Copyright © 2018 Ngọc Anh. All rights reserved.
//

import UIKit

class DataService {
    static var shared: DataService = DataService()
    
    func getDataAPI(complete: @escaping([Feature]) -> Void){
        var featureData: [Feature] = []
        guard let url = URL(string: "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_week.geojson") else { return  }
        let ulrRequest = URLRequest(url: url)
        DispatchQueue.global().async {
            let task = URLSession.shared.dataTask(with: ulrRequest, completionHandler: { (data, reponse, error) in
                guard error == nil else {
                    print(error!.localizedDescription)
                    return
                }
                guard let aFeature = data else {return}
                do{
                    guard let results = try JSONSerialization.jsonObject(with: aFeature, options: .mutableContainers) as? DICT else {return}
                    guard let features = results["features"] as? [DICT] else {return}
                    for dataFeature in features {
                        if let featureObject = Feature(dictionary: dataFeature){
                            featureData.append(featureObject)
                        }
                    }
                    DispatchQueue.main.async {
                        complete(featureData)
                    }
                    
                    
                }
                   
                catch{
                    print(error.localizedDescription)
                }
            })
            task.resume()
        }
    }
}
