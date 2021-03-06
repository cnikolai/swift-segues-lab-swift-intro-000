//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    var animal:String?
    @IBOutlet weak var AnimalEmojiLabel: UILabel!
    @IBOutlet weak var AnimalLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let animal = animal {
            AnimalLabel?.text = animal
            
            let animalEmoji = animalNameToEmoji(animal)
            AnimalEmojiLabel?.text = animalEmoji
            navigationItem.title = animal
        }
    }
   
    fileprivate func emojiToName(_ emoji: String) -> String {
        switch emoji {
        case "🐶":
            return "Dog"
        case "🐱":
            return "Cat"
        case "🐭":
            return "Mouse"
        case "🐹":
            return "Hamster"
        case "🐰":
            return "Bunny"
        case "🐼":
            return "Panda"
        case "🦁":
            return "Lion"
        case "🐷":
            return "Pig"
        case "🐸":
            return "Frog"
        case "🐙":
            return "Octopus"
        default:
            return ""
        }
    }
    
    fileprivate func animalNameToEmoji(_ animalName: String) -> String {
        switch animalName {
        case "Dog":
            return "🐶"
        case "Cat":
            return "🐱"
        case "Mouse":
            return "🐭"
        case "Hamster":
            return "🐹"
        case "Bunny":
            return "🐰"
        case "Panda":
            return "🐼"
        case "Lion":
            return "🦁"
        case "Pig":
            return "🐷"
        case "Frog":
            return "🐸"
        case "Octopus":
            return "🐙"
        default:
            return ""
        }
    }
}
