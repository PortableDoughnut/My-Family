//
//  DetailViewController.swift
//  My Family
//
//  Created by Gwen Thelin on 9/26/24.
//

import UIKit


class DetailViewController: UIViewController {

	@IBOutlet weak var bioLabel: UILabel!
	@IBOutlet weak var ageLabel: UILabel!
	@IBOutlet weak var specalityLabel: UILabel!
	@IBOutlet weak var landscapeImage: UIImageView!
	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

		var familyMemberToUse: familyDetail
		
		switch self.title {
			case "Meagan":
				familyMemberToUse = meagan
			case "Gwen":
				familyMemberToUse = gwen
			case "Brett":
				familyMemberToUse = brett
			case "Alicia":
				familyMemberToUse = alicia
			case "Mads":
				familyMemberToUse = mads
			default:
				familyMemberToUse = gwen
				print("Error")
		}
		
		landscapeImage.image = UIImage(named: familyMemberToUse.image)
		specalityLabel.text = familyMemberToUse.specality
		ageLabel.text = "\(String(familyMemberToUse.age)) years old"
		bioLabel.text = familyMemberToUse.bio
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
