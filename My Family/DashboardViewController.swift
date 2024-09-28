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
    
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let title = sender as? String else { return }
		
		segue.destination.title = title
	}

    @IBAction func coffeeGwenTapped(_ sender: UITapGestureRecognizer) {
		performSegue(withIdentifier: "DetailViewSegue", sender: "Gwen")
    }
    
    @IBAction func footballMeaganTapped(_ sender: UITapGestureRecognizer) {
		performSegue(withIdentifier: "DetailViewSegue", sender: "Meagan")
    }
    
    @IBAction func madsHunnyTapped(_ sender: UITapGestureRecognizer) {
		performSegue(withIdentifier: "DetailViewSegue", sender: "Mads")
    }
    
    @IBAction func brettCameraTapped(_ sender: UITapGestureRecognizer) {
		performSegue(withIdentifier: "DetailViewSegue", sender: "Brett")
    }
    
    @IBAction func AliciaDonkeyTapped(_ sender: UITapGestureRecognizer) {
		performSegue(withIdentifier: "DetailViewSegue", sender: "Alicia")
    }
}

