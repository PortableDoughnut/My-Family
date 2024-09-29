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
	
	struct familyDetail {
		var image: String
		var specality: String
		var age: Int
		var bio: String
	}
	
	var gwen = familyDetail(image: "Gwen Mirror", specality: "The Programmer", age: 24, bio: "Gwen has loved programming and video games from a young age. She is working to learn as much as she can.")
	var meagan = familyDetail(image: "Meagan Backyard", specality: "The Teacher", age: 29, bio: "Meagan has gone through so many hard things in her life and has always percivered and found a way forward. She has inspired me to be the best person I can be no matter what happens.")
	var mads = familyDetail(image: "Mads L", specality: "The Artist", age: 26, bio: "Mads has been drawing for as long as I remember, I have always felt like she will go somewhere great. I think that she is closer than ever after seeing her recent work.")
	var brett = familyDetail(image: "Brett Peter", specality: "The Photographer", age: 56, bio: "Ever since I was a child my dad has been taking amazing pictures and playing beautiful music on the piano. I have always looked up to him as someone who can do so much with his talents.")
	var alicia = familyDetail(image: "Alicia Puppies", specality: "The Crafter", age: 54, bio: "My mom has been making amazing things my entire life. Amazing things like cards, crafts, experiences, food, and more. She has taught me that I can create great things and have a better life for it.")
	
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
