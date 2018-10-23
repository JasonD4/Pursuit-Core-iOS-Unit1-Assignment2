//
//  main.swift
//  Hangman
//
//  Created by Alex Paul on 10/15/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation
var counter = 3
var word = ""
var word2 = ""
var word3 = ""


let allTheWords = ["able", "about", "account", "acid", "across", "addition", "adjustment", "advertisement", "after", "again", "against", "agreement", "almost", "among", "amount", "amusement", "angle", "angry", "animal", "answer", "apparatus", "apple", "approval", "arch", "argument", "army", "attack", "attempt", "attention", "attraction"]
var letter = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

if let random = allTheWords.randomElement(){
    for _ in random{
        word.append("_")
        word2 = random
    }
}
print("please select a character you have 3 tries")

firstloop: while word != word2 && counter > 0{
    print(word)
let choice = readLine()?.lowercased()
    //user types
if letter.contains(choice ?? "!") {
    if word2.contains(choice ?? "!"){
        word3.append(choice ?? "!")
        word.removeAll()
    for letters in word2{
        if word3.contains(letters){
            word.append(letters)
        }
        else{
            word.append("_")

        }
    }

    }
        else{
        counter -= 1
        print("you have \(counter) left")
        }

}
else{
    print("try again")
}
    print("the correct word was \(word2)")
    sleep(1)
    
while counter == 0{  
    print("well you tried would you like to play again. (please type yes or no)")
    var answer = readLine()
    switch answer {
    case "yes": counter += 3
    word.removeAll()
    if let random = allTheWords.randomElement(){
        for _ in random{
            word.append("_")
            word2 = random
        }
    }
        continue
    case "no":
        print("thank you for playing")
        break
    default:
   print("please give a yes or no")
}

    }

}
if counter > 0{
print("good job you had \(counter) guesses left")
}


// thanks alot alan ^.^
