//
//  DetailViewController.swift
//  My Family
//
//  Created by Gwen Thelin on 9/26/24.
//

import UIKit


class DetailViewController: UIViewController {

	@IBOutlet weak var landscapeImage: UIImageView!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

		switch self.title {
			case "Meagan":
				landscapeImage.image = UIImage(named: "Meagan Backyard")
			case "Gwen":
				landscapeImage.image = UIImage(named: "Gwen Mirror")
			case "Brett":
				landscapeImage.image = UIImage(named: "Brett Peter")
			case "Alicia":
				landscapeImage.image = UIImage(named: "Alicia Puppies")
			case "Mads":
				landscapeImage.image = UIImage(named: "Mads L")
			default:
				break
		}
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
