//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 고정완 on 2020/07/20.
//  Copyright © 2020 Can_E3. All rights reserved.
//

import SwiftUI //ViewModel 은 View protocol 이 아니더라도, SwitfUI를 import 해야한다.


//ViewModel 은 class 로 선언한다.
// class로 선언하는 이유: Model과 View 에서 reference 를 통해 같은 메모리에 접근하는 것을 확신하기 위해
class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in emojis[pairIndex] }
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    // MARK: - Intents(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}


