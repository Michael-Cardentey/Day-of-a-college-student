//
//  Story.swift
//  Day of a college student
//
//  Created by Michael Cardentey on 3/7/24.
//

import Foundation
import UIKit

struct Story {
    let title : String
    let choice1 : String
    let choice2 : String
    let choice1Destination : Int
    let choice2Destinition : Int
    let storyScene : UIImage
    
    init(title: String, choice1: String, choice2: String, choice1Destination: Int, choice2Destinition: Int, storyScene : UIImage) {
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice1Destination = choice1Destination
        self.choice2Destinition = choice2Destinition
        self.storyScene = storyScene
    }
}
