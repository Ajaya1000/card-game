//
//  CadModel.swift
//  card-game
//
//  Created by Ajaya Mati on 17/06/22.
//

import Foundation

class CardModel{
    
    func getCards() -> [Card]{
        
        //declare an empty array
        var generatedCards = [Card]()
        
        //randomly generate 8 pairs of cards
        for _ in 1...8 {
            
            //generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            //create two new cards object
            let cardOne = Card()
            let cardTwo = Card()
            
            
            //set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            //add them two array
            generatedCards += [cardOne,cardTwo]
        }
        
        
        //Randomize the card within the array
        
        generatedCards.shuffle()
        
        // Retun the array
        return generatedCards
    }
}
