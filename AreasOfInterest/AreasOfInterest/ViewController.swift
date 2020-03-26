//
//  ViewController.swift
//  AreasOfInterest
//
//  Created by Alberto Mancarella on 3/23/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    
    let CrossroadsLat = 34.024639
    let CrossroadsLong = -118.473633
    let NewYorkLat = 40.689247
    let NewYorkLong = -74.044502
    let ItalyLat = 41.890251
    let ItalyLong = 12.492373
    let LALat = 34.052235
    let LALong = -118.243683
    
    

    
    @IBOutlet weak var mapView: MKMapView!
  
    
    @IBOutlet weak var NewYork: UIButton!
    
    @IBOutlet weak var Rome: UIButton!
    
    @IBOutlet weak var LA: UIButton!
    
    @IBOutlet weak var place: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NewYork.setTitleColor(UIColor.gray, for: .normal)
        LA.setTitleColor(UIColor.gray, for: .normal)
        Rome.setTitleColor(UIColor.gray, for: .normal)
        // Do any additional setup after loading the view.
        
        
        mapView.delegate = self
        // Do any additional setup after loading the view.
        
        changeLocation(CrossroadsLat: 34.0240892 , CrossroadsLong: -118.4747321)
    }
    
    func changeLocation(CrossroadsLat: Double, CrossroadsLong: Double){
        let point = MKMapPoint(CLLocationCoordinate2D(latitude: CrossroadsLat, longitude: CrossroadsLong))
           let size = MKMapSize(width: 100000, height: 100000)
           let rect = MKMapRect(origin: point, size: size)
            mapView.setRegion(MKCoordinateRegion(rect), animated: true)
    }
    
    
    
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        let rect = mapView.visibleMapRect
        let crossroadsLc =   CLLocationCoordinate2D(latitude: CrossroadsLat, longitude: CrossroadsLong)
        
        let crossroadsPoint = MKMapPoint(crossroadsLc)
        
        
        
        let NewYorkLc =   CLLocationCoordinate2D(latitude: NewYorkLat, longitude: NewYorkLong)
        
        let RomeLc = CLLocationCoordinate2D(latitude: ItalyLat, longitude: ItalyLong)
        
        let LALc = CLLocationCoordinate2D(latitude: LALat, longitude: LALong)
        
        let NewYorkPoint = MKMapPoint(NewYorkLc)
        
         let RomePoint = MKMapPoint(RomeLc)
        
         let LAPoint = MKMapPoint(LALc)
    
        

    
        if rect.contains(crossroadsPoint){
            place.text = "Crossroads"
        } else if rect.contains(NewYorkPoint){
            place.text = "New York"
        } else if rect.contains(RomePoint){
            place.text = "Rome"
        } else if rect.contains(LAPoint){
            place.text = "LA"
        } else{
            place.text = "Somewhere on the planet"
        }
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


    
    @IBAction func zoomOut(_ sender: Any) {
        let factor = 2.0
        zoom(factor)
    }
    
    @IBAction func zoomIn(_ sender: Any) {
        let factor = 0.5
        zoom(factor)
    }
    
    
    @IBAction func goNewYork(_ sender: Any) {
        changeLocation(CrossroadsLat: NewYorkLat, CrossroadsLong: NewYorkLong)
        NewYork.setTitleColor(UIColor.red, for: .normal)
        LA.setTitleColor(UIColor.gray, for: .normal)
        Rome.setTitleColor(UIColor.gray, for: .normal)
    }
    
    
    @IBAction func goItaly(_ sender: Any) {
        changeLocation(CrossroadsLat: ItalyLat, CrossroadsLong: ItalyLong)
        NewYork.setTitleColor(UIColor.gray, for: .normal)
        LA.setTitleColor(UIColor.gray, for: .normal)
        Rome.setTitleColor(UIColor.systemBlue, for: .normal)
    }
    
    
    @IBAction func goLA(_ sender: Any) {
        changeLocation(CrossroadsLat: LALat, CrossroadsLong: LALong)
        NewYork.setTitleColor(UIColor.gray, for: .normal)
        LA.setTitleColor(UIColor.green, for: .normal)
        Rome.setTitleColor(UIColor.gray, for: .normal)
    }
    
}

