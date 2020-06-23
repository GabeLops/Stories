//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber: Int
    let stories = [
        Story(title: "You see a fork in the road. ", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tiger.", choice1: "Fight it!", choice2: "Play dead"),
        Story(title: "You see a shooting but the killer is your dad", choice1: "call the police.", choice2: "I didn't see anything")]
    
    func nextStory(_ userChoice: String) {
        if sender.currentTitle! == stories[0].choice1{
            storyLabel.text = stories[1].title
            choice1Button.setTitle(stories[1].choice1, for: .normal)
            choice2Button.setTitle(stories[1].choice2, for: .normal)
            
        } else {
        storyLabel.text = stories[2].title
        choice1Button.setTitle(stories[2].choice1, for: .normal)
        choice2Button.setTitle(stories[2].choice2, for: .normal)
        }
        }
    
}


