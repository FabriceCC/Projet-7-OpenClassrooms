//
//  countOnMeModel.swift
//  CountOnMe
//
//  Created by utilisateur on 28/03/2019.
//  Copyright © 2019 Ambroise Collon. All rights reserved.
//

import Foundation

class Calculate {
    
    var stringNumbers: [String] = [String()]
    var operators: [String] = ["+"]
    var index = 0

    
    
    
    
    

    func calculateTotal() -> Int {
        
        
        var total = 0
        for (i, stringNumber) in stringNumbers.enumerated() {
            if let number = Int(stringNumber) {
                if operators[i] == "+" {
                    total += number
                } else if operators[i] == "-" {
                    total -= number
                }
                else if operators[i] == "x" {
                    total = total * number
                }
                
            }
        }
        
        return total
        
    
    }
   
}
