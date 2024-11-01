//
//  AddFamilyTableViewController.swift
//  My Family
//
//  Created by Gwen Thelin on 11/1/24.
//

import UIKit

class AddFamilyTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	@IBOutlet weak var portraitImage: UIImageView!
	@IBOutlet weak var landscapeImage: UIImageView!
	@IBOutlet weak var landscapeImageButton: UIButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

	@IBAction func imageButtonTapped(_ sender: UIButton) {
		let imagePicker: UIImagePickerController = .init()
		imagePicker.delegate = self
		
		if let senderTitle = sender.titleLabel?.text, senderTitle.lowercased().contains("landscape") {
			imagePicker.title = "landscape"
		} else if let senderTitle = sender.titleLabel?.text, senderTitle.lowercased().contains("portrait") {
			imagePicker.title = "portrait"
		}
		
		let alertController: UIAlertController = .init(title: "Choose Source", message: nil, preferredStyle: .actionSheet)
		
		let cancelAction: UIAlertAction = .init(title: "Cancel", style: .cancel, handler: nil)
		alertController.addAction(cancelAction)
		
		if UIImagePickerController.isSourceTypeAvailable(.camera) {
			let cameraAction: UIAlertAction = .init(title: "Camera", style: .default) { _ in
				imagePicker.sourceType = .camera
				self.present(imagePicker, animated: true, completion: nil)
			}
			alertController.addAction(cameraAction)
		}
		
		if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
			let photoLibraryAction: UIAlertAction = .init(title: "Photo Library", style: .default) { _ in
				imagePicker.sourceType = .photoLibrary
				self.present(imagePicker, animated: true, completion: nil)
			}
			alertController.addAction(photoLibraryAction)
		}
		
		alertController.popoverPresentationController?.sourceView = sender
		
		present(alertController, animated: true, completion: nil)
	}

	func imagePickerController(
		_ picker: UIImagePickerController,
		didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
	) {
		guard let image: UIImage = info[.originalImage] as? UIImage else {
			return
		}
		
		if picker.title == "portrait" {
			portraitImage.image = image
		} else if picker.title == "landscape" {
			landscapeImage.image = image
		}
		dismiss(animated: true, completion: nil)
	}
}
