//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "You see a fork in the road. ",
            choice1: "Take a left", choice1Destination: 2,
            choice2: "Take a right", choice2Destination: 1
        ),
        Story(
        title: "You see a tiger.",
         choice1: "Fight it!", choice1Destination: 2,
         choice2: "Play dead", choice2Destination: 3
        ),
        Story(
            title: "You see a shooting but the killer is your dad",
            choice1: "call the police.", choice1Destination: 5,
            choice2: "I didn't see anything", choice2Destination: 4
        )]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
            
        } else if userChoice ==  currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
        
       
        
        }
    
}


