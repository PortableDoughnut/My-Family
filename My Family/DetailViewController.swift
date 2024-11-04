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
	@IBOutlet weak var portraitImage: UIImageView!
	
	var familyMember: familyDetail?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		if let familyMember = familyMember {
			title = familyMember.name
			bioLabel.text = familyMember.bio
			ageLabel.text = "\(familyMember.age)"
			specalityLabel.text = familyMember.specality
			portraitImage.image = familyMember.portraitImage
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
