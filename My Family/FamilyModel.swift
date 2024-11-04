//
//  FamilyModel.swift
//  My Family
//
//  Created by Gwen Thelin on 10/31/24.
//
import Foundation
import UIKit

struct familyDetail {
	var name: String
	var landscapeImage: UIImage
	var portraitImage: UIImage
	var specality: String
	var age: Int
	var bio: String
	
	init(
		name: String,
		landscapeImage: String,
		portraitImage: String,
		specality: String,
		age: Int,
		bio: String
	) {
		self.name = name
		self.landscapeImage = UIImage(named: landscapeImage) ?? UIImage(named: "Gwen Coffee")!
		self.portraitImage = UIImage(named: portraitImage) ?? UIImage(named: "Gwen Mirror")!
		self.specality = specality
		self.age = age
		self.bio = bio
	}
	
	init(
		name: String,
		landscapeImage: UIImage,
		portraitImage: UIImage,
		specality: String,
		age: Int,
		bio: String
	) {
		self.name = name
		self.landscapeImage = landscapeImage
		self.portraitImage = portraitImage
		self.specality = specality
		self.age = age
		self.bio = bio
	}
}

var gwen = familyDetail(
	name: "Gwen",
	landscapeImage: "Gwen Coffee",
	portraitImage: "Gwen Mirror",
	specality: "The Programmer",
	age: 24,
	bio: "Gwen has loved programming and video games from a young age. She is working to learn as much as she can."
)
var meagan = familyDetail(
	name: "Meagan",
	landscapeImage: "Meagan Football",
	portraitImage: "Meagan Food",
	specality: "The Teacher",
	age: 29,
	bio: "Meagan has gone through so many hard things in her life and has always percivered and found a way forward. She has inspired me to be the best person I can be no matter what happens."
)
var mads = familyDetail(
	name: "Mads",
	landscapeImage: "Mads Hunny",
	portraitImage: "Mads L",
	specality: "The Artist",
	age: 26,
	bio: "Mads has been drawing for as long as I remember, I have always felt like she will go somewhere great. I think that she is closer than ever after seeing her recent work."
)
var brett = familyDetail(
	name: "Brett",
	landscapeImage: "Brett Camera",
	portraitImage: "Brett Peter",
	specality: "The Photographer",
	age: 56,
	bio: "Ever since I was a child my dad has been taking amazing pictures and playing beautiful music on the piano. I have always looked up to him as someone who can do so much with his talents."
)
var alicia = familyDetail(
	name: "Alicia",
	landscapeImage: "Alicia Donkey",
	portraitImage: "Alicia Puppies",
	specality: "The Crafter",
	age: 54,
	bio: "My mom has been making amazing things my entire life. Amazing things like cards, crafts, experiences, food, and more. She has taught me that I can create great things and have a better life for it."
)
