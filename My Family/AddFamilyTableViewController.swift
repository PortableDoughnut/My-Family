//
//  AddFamilyTableViewController.swift
//  My Family
//
//  Created by Gwen Thelin on 11/1/24.
//

import UIKit

class AddFamilyTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	@IBOutlet weak var nameTextField: UITextField!
	
	@IBOutlet weak var portraitImage: UIImageView!
	@IBOutlet weak var landscapeImage: UIImageView!
	@IBOutlet weak var landscapeImageButton: UIButton!
	
	@IBOutlet weak var specalityTextField: UITextField!
	
	@IBOutlet weak var ageTextField: UITextField!
	
	@IBOutlet weak var bioTextView: UITextView!
	
	var familyMemberDelegate: FamilyDelagate?
	
	var newFamilyMember: familyDetail = .init(
		name: "",
		landscapeImage: "",
		portraitImage: "",
		specality: "",
		age: 25,
		bio: ""
	)
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
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
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard segue.identifier == "familyTableUnwind" else { return }
		guard let sender = sender as?  FamilyTableViewController else { return }
		
		newFamilyMember = familyDetail(
			name: nameTextField.text ?? "",
			landscapeImage: landscapeImage.image ?? UIImage(named: "Gwen Coffee") ?? UIImage(),
			portraitImage: portraitImage.image ?? UIImage(named: "Gwen Mirror") ?? UIImage(),
			specality: specalityTextField.text ?? "",
			age: Int(ageTextField.text ?? "") ?? 25,
			bio: bioTextView.text ?? ""
		)
		print(newFamilyMember)
	}
	// "familyTableUnwind"
	// "familyTableSegue"
	@IBAction func unwindToFamilyView(segue: UIStoryboardSegue) {
		guard segue.identifier == "familyTableUnwind",
			  let source = segue.source as? AddFamilyTableViewController,
			  let destinationVC = segue.destination as? FamilyTableViewController
		else { return }
		
		if let indexPath = tableView.indexPathForSelectedRow {
			destinationVC.familyMembers[indexPath.row] = newFamilyMember
			tableView
				.reloadRows(
					at: [indexPath],
					with: .none
				)
		} else {
			let newIndexPath = IndexPath(row: destinationVC.familyMembers.count, section: 0)
			destinationVC.familyMembers.append(newFamilyMember)
			tableView
				.insertRows(
					at: [newIndexPath],
					with: .automatic
				)
		}
	}
}
