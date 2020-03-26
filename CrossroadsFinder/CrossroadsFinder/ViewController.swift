//
//  ViewController.swift
//  CrossroadsFinder
//
//  Created by Alberto Mancarella on 3/23/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    
    let CROSSROADS_LAT = 34.024639
    let CROSSROADS_LONG = -118.473633
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        // Do any additional setup after loading the view.
        
        let crossroadsPoint = MKMapPoint(CLLocationCoordinate2D(latitude: CROSSROADS_LAT, longitude: CROSSROADS_LONG))
        let size = MKMapSize(width: 10000, height: 10000)
        let rect = MKMapRect(origin: crossroadsPoint, size: size)
        
        mapView.setRegion(MKCoordinateRegion(rect), animated: true)
    }

    @IBAction func zoomOut(_ sender: Any) {
        let factor = 2.0
        zoom(factor)
    }
    
    @IBAction func zoomIn(_ sender: Any) {
        let factor = 0.5
        zoom(factor)
    }
    
    
    func zoom(_ zoomFactor: Double) {
        let region = mapView.region
        let span = region.span
        let newLat = span.latitudeDelta * zoomFactor
        let newLong = span.longitudeDelta * zoomFactor
        let newSpan = MKCoordinateSpan(latitudeDelta: newLat, longitudeDelta: newLong)
        let newRegion = MKCoordinateRegion(center: region.center, span: newSpan)
        mapView.setRegion(newRegion, animated: true)
        
        
    }
    
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        let rect = mapView.visibleMapRect
        let crossroadsLc =   CLLocationCoordinate2D(latitude: CROSSROADS_LAT, longitude: CROSSROADS_LONG)
        let crossroadsPoint = MKMapPoint(crossroadsLc)
        if rect.contains(crossroadsPoint){
            print("test")
        } else{
            print("nah")
        }
    }
    
    
    
}

