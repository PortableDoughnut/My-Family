//
//  ViewController.swift
//  My Family
//
//  Created by Gwen Thelin on 9/26/24.
//

import UIKit

class DashboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func coffeeGwenTapped(_ sender: UITapGestureRecognizer) {
        print("Coffee Gwen")
    }
    
    @IBAction func footballMeaganTapped(_ sender: UITapGestureRecognizer) {
        print("Football Meagan")
    }
    
    @IBAction func madsHunnyTapped(_ sender: UITapGestureRecognizer) {
        print("Mads Hunny")
    }
    
    @IBAction func brettCameraTapped(_ sender: UITapGestureRecognizer) {
        print("Brett Camera")
    }
    
    @IBAction func AliciaDonkeyTapped(_ sender: UITapGestureRecognizer) {
        print("Alicia Donkey")
    }
}

