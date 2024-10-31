//
//  FamilyTableViewCell.swift
//  My Family
//
//  Created by Gwen Thelin on 10/31/24.
//

import UIKit

class FamilyTableViewCell: UITableViewCell {
	
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var landscapeImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	func update(_ person: familyDetail) {
		nameLabel.text = person.name
		landscapeImage.image = UIImage(named: person.image)
	}

}
