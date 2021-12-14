//
//  MapViewCoordinator.swift
//  HelloMap
//
//  Created by Larry - 1024 on 2021/12/14.
//

import UIKit
import MapKit

class MapViewCoordinator: NSObject, MKMapViewDelegate {
    
    var mapViewController: MapView
    
    init(_ control: MapView) {
        self.mapViewController = control
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")

        annotationView.canShowCallout = true

        annotationView.image = UIImage(systemName: (annotation as! LandmarkAnnotation).iconName)

        return annotationView
    }
}
