//
//  HistoryBrain.swift
//  History
//
//  Created by user on 29.01.23.
//

import Foundation
struct HistoryBrain {
    
    var historynumber = 0
    
    let history = [
        History(textHistory: "Жила была девочка по имени...", choice1: "Юля", chioce1Destination: 1, choice2: "Света", chioce2Destination: 2 ),
        History(textHistory: "Однажды юля собралась в лес за грибами и взяла с собой...", choice1: "Корзину", chioce1Destination: 3, choice2: "Ружьё", chioce2Destination: 4 ),
        History(textHistory: "Света хотела купить себе новый телефон, но денег не хватало и тогда она решила...", choice1: "Украсть его", chioce1Destination: 5, choice2: "Взять его в кредит", chioce2Destination: 6 ),
        History(textHistory: "В лесу на Юлю напала лиса, но т.к у неё не оказалось ружья её съели ", choice1: "В другой раз", chioce1Destination: 0, choice2: "Повезёт", chioce2Destination: 0 ),
        History(textHistory: "В лесу на Юлю напала лиса, но она убила её из ружья. ", choice1: "На ужин сегодня", chioce1Destination: 0, choice2: "Лиса", chioce2Destination: 0 ),
        History(textHistory: "Но её поймал охраник ", choice1: "В другой раз", chioce1Destination: 0, choice2: "Повезёт", chioce2Destination: 0 ),
        History(textHistory: "Но в 12 лет нельзя брать кредит ", choice1: "Повзрослеешь", chioce1Destination: 0, choice2: "Приходи", chioce2Destination: 0 )
    ]
    
    
    mutating func nextHistory(userChoice:String) {
       let currentStrory = history[historynumber]
        if userChoice == currentStrory.choice1  {
            historynumber = currentStrory.chioce1Destination
        }else {
            historynumber = currentStrory.chioce2Destination
        }
    }
    func getHistory1() -> String {
        return history[historynumber].choice1
    }
    func getHistory2() -> String {
        return history[historynumber].choice2
    }
    
    func getHistorynumber() -> String {
    return history[historynumber].textHistory
    }
}
