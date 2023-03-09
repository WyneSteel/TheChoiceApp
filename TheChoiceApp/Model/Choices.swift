//
//  Choices.swift
//  TheChoiceApp
//
//  Created by Wynelher Tagayuna on 3/9/23.
//

import Foundation

struct Choices{
    let story: String
    let choiceOne: String
    let choiceTwo: String
    
    init(story: String, choiceOne: String, choiceTwo: String) {
        self.story = story
        self.choiceOne = choiceOne
        self.choiceTwo = choiceTwo
    }
}
