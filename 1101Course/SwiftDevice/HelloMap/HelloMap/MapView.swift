//
//  MapView.swift
//  HelloMap
//
//  Created by Larry - 1024 on 2021/12/14.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let mapView = MKMapView(frame: .zero)
    var locationManager = CLLocationManager()
    
    @Binding var currentRestaurant: Restaurant
    //let landmarks = LandmarkAnnotation.requestMockData()
    
    func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }
    
    func makeUIView(context: Context) -> MKMapView {
        
        setupManager()
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
        
        //MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        //let coordinate = CLLocationCoordinate2D(latitude: 24.9698187, longitude: 121.2632845)
        //let coordinate = currentRestaurant.location
        let coordinate = mapView.userLocation.coordinate
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        //view.delegate = context.coordinator
        //view.addAnnotations(landmarks)
        
        /*
        let landmark = LandmarkAnnotation(title: currentRestaurant.name, subtitle: currentRestaurant.description, coordinate: currentRestaurant.location)
        
        view.addAnnotation(landmark)
        view.selectAnnotation(landmark, animated: true)
         */
    }
    
    func makeCoordinator() ->MapViewCoordinator {
        MapViewCoordinator(self)
    }
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
