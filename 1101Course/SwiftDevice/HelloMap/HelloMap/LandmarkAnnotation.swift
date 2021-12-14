//
//  LandmarkAnnotation.swift
//  HelloMap
//
//  Created by Larry - 1024 on 2021/12/14.
//

import UIKit
import MapKit

class LandmarkAnnotation: NSObject, MKAnnotation {
    
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    let iconName: String
    
    init(title: String?, subtitle: String?, coordinate: CLLocationCoordinate2D, iconName: String = "mappin") {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.iconName = iconName
    }
    
    static func requestMockData() -> [LandmarkAnnotation] {
        return [
            LandmarkAnnotation(title: "YZU", subtitle: "Hall 1", coordinate: .init(latitude: 24.9705629, longitude: 121.2649648)),
            LandmarkAnnotation(title: "YZU", subtitle: "Hall 3", coordinate: .init(latitude: 24.969251, longitude: 121.2656609), iconName: "car")
        ]
    }
}
