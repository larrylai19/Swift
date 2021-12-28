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

        var thisIconName = "mappin"
        
        if annotation is LandmarkAnnotation {
            thisIconName = (annotation as! LandmarkAnnotation).iconName
        } else if annotation is MKUserLocation {
            let thisAnnotation = annotation as! MKUserLocation
//            thisAnnotation.title = "Current Location"
            thisAnnotation.title = "\(String(describing: thisAnnotation.location!.coordinate.latitude)), \(String(describing: thisAnnotation.location!.coordinate.longitude))"
            CLGeocoder().reverseGeocodeLocation(thisAnnotation.location!) { (place, error) in
                if error == nil {
                    thisAnnotation.subtitle = place?[0].description ?? "Empty Addr"
                } else {
                    thisAnnotation.subtitle = "No Address Founded."
                }
            }
        }
        
        annotationView.canShowCallout = true

        annotationView.image = UIImage(systemName: thisIconName)

        return annotationView
    }
}
