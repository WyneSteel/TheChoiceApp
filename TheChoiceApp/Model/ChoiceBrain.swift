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
    var endingIndex = 0
    var ending: String?
    
    // Array of Choices object
    let choices = [Choices(story: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.", choiceOne: "I'll hop in. Thanks for the help!", choiceTwo: "Well, I don't have many options. Better ask him if he's a murderer first."),
                   
                   Choices(story: "He nods slowly, unfazed by the question.", choiceOne: "Pretend you asked that question as a joke, and then kindly decline his offer.", choiceTwo: "Decline because have seen enough horror movies and you know where this is headed."),
                   
                   Choices(story: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", choiceOne: "I love Elton John! Hand him the cassette tape.", choiceTwo: "It’s him or me! Take the knife and stab him."),
                   
                   Choices(story: "You remembered that there is a spare tire in the trunk. You changed the car tire and drove to your destination happily.", choiceOne: "--->", choiceTwo: "--->"),
                   
                   Choices(story: "In the chaos of the situation, the truck swerves deep inside a cornfield and flips over", choiceOne: "Get out of the truck and grab the knife. Finish him off!", choiceTwo: "Get out of the truck and run back towards the road."),
                   
                   Choices(story: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"", choiceOne: "Ask him to take a picture with you.", choiceTwo: "You said your thanks and farewells. You then proceeded to search the town for car repair shops that could assist you."),
                   
                   Choices(story: "You immediately went to a police station and reported your story to the police officer. You showed the picture you took with the man with a wide-brimmed hat. A week has passed since the bazaar encounter, you found out in the news that the man with a wide-brimmed hat was caught and sentenced to a life in prison.", choiceOne: "--->", choiceTwo: "--->"),
                   
                   Choices(story: "A week has passed since the bazaar encounter, you found out in the news that the man with a wide-brimmed hat was caught and sentenced to a life in prison. You then found out that you are a wanted man for the assistance of dumping a dead body by the pier.", choiceOne: "--->", choiceTwo: "--->"),
                   
                   Choices(story: "As he draw his last breath, the car explodes taking you with it.", choiceOne: "--->", choiceTwo: "--->"),
                   
                   Choices(story: "As you reach the road, the man with a wide-brimmed hat caught up and pinned you down on the the middle of the road. As the struggles continues, a ten wheeler truck ran over the both of you.", choiceOne: "--->", choiceTwo: "--->")]
    
    // Get index of next story and choices
    mutating func getDestination(from button: UIButton){
        if let title = button.titleLabel{
            if title.text == "I'll hop in. Thanks for the help!"{
                index = 2
            }else if title.text == "Well, I don't have many options. Better ask him if he's a murderer first."{
                index = 1
            }else if title.text == "I love Elton John! Hand him the cassette tape."{
                index = 5
            }else if title.text == "It’s him or me! Take the knife and stab him."{
                index = 4
            }else if title.text == "Pretend you asked that question as a joke, and then kindly decline his offer."{
                index = 3// End
            }else if title.text == "Decline because have seen enough horror movies and you know where this is headed."{
                index = 3// End
            }else if title.text == "Ask him to take a picture with you."{
                index = 6// End
            }else if title.text == "You said your thanks and farewells. You then proceeded to search the town for car repair shops that could assist you."{
                index = 7// End
            }else if title.text == "Get out of the truck and grab the knife. Finish him off!"{
                index = 8// End
            }else if title.text == "Get out of the truck and run back towards the road."{
                index = 9// End
            }else if title.text == "--->"{
                index = 0
            }
        }
    }
    
    // Display story and choices
    mutating func getStoryAndChoices(_ story: UILabel, _ choiceOne: UIButton, _ choiceTwo: UIButton){
        if index == 3 || index == 6 || index == 7 || index == 8 || index == 9{
            story.text = choices[index].story
            choiceOne.setTitle(choices[index].choiceOne, for: .normal)
            choiceTwo.setTitle(choices[index].choiceTwo, for: .normal)
            endingIndex = index
        }else if index == 1 || index == 2 || index == 4 || index == 5{
            story.text = choices[index].story
            choiceOne.setTitle(choices[index].choiceOne, for: .normal)
            choiceTwo.setTitle(choices[index].choiceTwo, for: .normal)
        }else if index == 0{
            ending = getEnding(story: endingIndex)
            story.text = choices[index].story
            choiceOne.setTitle(choices[index].choiceOne, for: .normal)
            choiceTwo.setTitle(choices[index].choiceTwo, for: .normal)
        }
    }
    
    // Check if ending of the story is good or bad
    func getEnding(story number: Int) -> String{
        var result = ""
        if number == 3 || number == 6{
            result = "GOOD ENDING"
        }else if number == 7 || number == 8 || number == 9{
            result = "BAD ENDING"
        }
        return result
    }
}
