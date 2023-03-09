//
//  ChoiceBrain.swift
//  TheChoiceApp
//
//  Created by Wynelher Tagayuna on 3/9/23.
//

import Foundation
import UIKit

struct ChoiceBrain{
    var index = 0
    
    // Array of Choices object
    let choices = [Choices(story: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.", choiceOne: "I'll hop in. Thanks for the help!", choiceTwo: "Well, I don't have many options. Better ask him if he's a murderer first."),
                   Choices(story: "He nods slowly, unfazed by the question.", choiceOne: "At least he's honest. I'll climb in.", choiceTwo: "Wait, I know how to change a tire."),
                   Choices(story: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", choiceOne: "I love Elton John! Hand him the cassette tape.", choiceTwo: "It's him or me! You take the knife and stab him."),
                   Choices(story: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", choiceOne: "The", choiceTwo: "End"),
                   Choices(story: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", choiceOne: "The", choiceTwo: "End"),
                   Choices(story: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'", choiceOne: "The", choiceTwo: "End")]
    
    // Display story and choices
    mutating func getStoryAndChoices(_ story: UILabel, _ choiceOne: UIButton, _ choiceTwo: UIButton){
        if index == 0{
            story.text = "The End"
            choiceOne.setTitle("", for: .normal)
            choiceTwo.setTitle("", for: .normal)
        }else if index == 3 || index == 4 || index == 5{
            story.text = choices[index].story
            choiceOne.setTitle(choices[index].choiceOne, for: .normal)
            choiceTwo.setTitle(choices[index].choiceTwo, for: .normal)
        }else{
            story.text = choices[index].story
            choiceOne.setTitle(choices[index].choiceOne, for: .normal)
            choiceTwo.setTitle(choices[index].choiceTwo, for: .normal)
        }
    }
    
    // Get index of next story and choices
    mutating func getDestination(from button: UIButton){
        if let title = button.titleLabel{
            if title.text == "I'll hop in. Thanks for the help!"{
                index = 2
            }else if title.text == "Well, I don't have many options. Better ask him if he's a murderer first."{
                index = 1
            }else if title.text == "At least he's honest. I'll climb in."{
                index = 2
            }else if title.text == "Wait, I know how to change a tire."{
                index = 3
            }else if title.text == "I love Elton John! Hand him the cassette tape."{
                index = 5
            }else if title.text == "It's him or me! You take the knife and stab him."{
                index = 4
            }else{
                index = 0
            }
        }
    }
}
