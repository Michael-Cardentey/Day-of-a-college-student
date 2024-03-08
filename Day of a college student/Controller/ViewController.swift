//
//  ViewController.swift
//  Day of a college student
//
//  Created by Michael Cardentey on 3/7/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var backgroundScene: UIImageView!
    @IBOutlet weak var textDisplay: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    var story = StoryBrain()
    @IBAction func buttonPressed(_ sender: UIButton) {
        story.advanceStory(sender.currentTitle!)
        updateUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view.
    }
    
    
    func updateUI() {
        backgroundScene.image = story.changeScene()
        textDisplay.text = story.getText()
        choice1.setTitle(story.getChoice1(), for: .normal)
        choice2.setTitle(story.getChoice2(), for: .normal)
    }


}

