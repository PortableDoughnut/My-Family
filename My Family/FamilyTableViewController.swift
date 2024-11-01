//
//  FamilyTableViewController.swift
//  My Family
//
//  Created by Gwen Thelin on 10/31/24.
//

import UIKit

protocol FamilyDelagate {
	func addFamilyMember(_ familyMember: familyDetail)
}

class FamilyTableViewController: UITableViewController {

	var familyMembers: [familyDetail] = [gwen, brett, alicia, meagan, mads]
	var delegate: FamilyDelagate?
	
    override func viewDidLoad() {
        super.viewDidLoad()

        
		
         self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		return familyMembers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "familyCell", for: indexPath) as! FamilyTableViewCell

		cell.update(familyMembers[indexPath.row])

        return cell
    }

    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
			familyMembers.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
		guard let destination = segue.destination as? DetailViewController else { return }
		guard let familyMember = sender as? familyDetail else { return }
        // Pass the selected object to the new view controller.
		destination.familyMember = familyMember
    }
	
	override func tableView( _ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		performSegue(
			withIdentifier: "showDetailView",
			sender: familyMembers[indexPath.row]
		)
	}

}

extension FamilyTableViewController: FamilyDelagate {
	func addFamilyMember(_ familyMember: familyDetail) {
		familyMembers.append(familyMember)
	}

	
}
