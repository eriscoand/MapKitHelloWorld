//
//  ViewController.swift
//  MapHelloWorld
//
//  Created by Eric Risco de la Torre on 24/02/2017.
//  Copyright © 2017 ERISCO. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager : CLLocationManager?
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager = CLLocationManager()
        locationManager?.requestWhenInUseAuthorization()
        locationManager?.delegate = self
        locationManager?.startUpdatingLocation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func center(_ sender: Any) {
        
        let location = CLLocation.init(latitude: 51.51, longitude: -0.11)
        
        self.map.setCenter(location.coordinate, animated: true)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.first.debugDescription)
    }

}

