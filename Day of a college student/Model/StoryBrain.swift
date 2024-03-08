//
//  StoryBrain.swift
//  Day of a college student
//
//  Created by Michael Cardentey on 3/7/24.
//

import Foundation
import UIKit

struct StoryBrain {
    let storyScript = [Story(title: "You go to your algebra class dead tired, you can barely focus on the lesson due to lack of sleep", choice1: "Pay attenton, this lecture will likely be on the quiz", choice2: "I've worked hard, I deserve a little shut eye", choice1Destination: 1, choice2Destinition: 2, storyScene: UIImage(named: "stand_out_in_college")!),
                 Story(title: "You actually managed to focus in class and feel like you've learned something. Your friend asks you if you want to hang out for a bit after class", choice1: "Sure I'd love to hang out", choice2: "Maybe some other time, I need to study", choice1Destination: 4, choice2Destinition: 3, storyScene: UIImage(named: "stand_out_in_college")!),
                 Story(title: "You had the best sleep of your life, but didn't gain much out of your lecture and the test is in 3 days!", choice1: "I better cram in the library", choice2: "Go home and relax some more", choice1Destination: 3, choice2Destinition: 6, storyScene: UIImage(named: "stand_out_in_college")!),
                 Story(title: "You end up crashing due to lack of rest. Studying is important, but always make sure to look out for your body.", choice1: "The end", choice2: "The end", choice1Destination: 0, choice2Destinition: 0, storyScene: UIImage(named: "10-Universities-and-Colleges-With-Beautiful-or-Unusual-Libraries")!),
                 Story(title: "You spent time with your best friend to refresh your mind. You feel prepared to go and study the rest of the material!", choice1: "Hit the books and study", choice2: "I feel so confident I can just play videogames", choice1Destination: 5, choice2Destinition: 6, storyScene: UIImage(named: "10-Universities-and-Colleges-With-Beautiful-or-Unusual-Libraries")!),
                 Story(title: "You got so much studying done! You are absolutely going to pass your test now.", choice1: "I did it!", choice2: "WOOHOO", choice1Destination: 0, choice2Destinition: 0, storyScene: UIImage(named: "10-Universities-and-Colleges-With-Beautiful-or-Unusual-Libraries")!),
                 Story(title: "You spent the rest of your time playing videogames in your room. When you enter class next, you fail your test miserably.", choice1: "End", choice2: "Boohoo", choice1Destination: 0, choice2Destinition: 0, storyScene: UIImage(named: "esports")!)]
    
    let scene = [UIImage(imageLiteralResourceName: "stand_out_in_college.jpg"), UIImage(imageLiteralResourceName: "10-Universities-and-Colleges-With-Beautiful-or-Unusual-Libraries.jpg"),
    UIImage(imageLiteralResourceName: "esports.jpg")]

var storySection = 0
    
    
    
    mutating func advanceStory(_ userChoice : String) {
        if userChoice == storyScript[storySection].choice1 {
            storySection = storyScript[storySection].choice1Destination
        } else {
            storySection = storyScript[storySection].choice2Destinition
        }
    }
    
    func changeScene() -> UIImage {
        return storyScript[storySection].storyScene
    }

func getText() -> String{
    return storyScript[storySection].title
}
func getChoice1() -> String {
    return storyScript[storySection].choice1
}
func getChoice2() -> String {
    return storyScript[storySection].choice2
    }
    
}
