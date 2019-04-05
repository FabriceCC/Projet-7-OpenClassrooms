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
        var mul1 = 0
        
        
        for (i, stringNumber) in stringNumbers.enumerated() {
            if let number = Int(stringNumber) {
                
        
                
                if operators[i] == "+" {
                    
                    if i < stringNumbers.count-1 {
                        if operators[i+1] != "=" {
                        if operators[i+1] != "x" {
                            total += number
                            
                            }
                        
                        else
                            {mul1 = number}
                        }
                        }
                    else if i == stringNumbers.count-1 {
                        total += number
                        
                        
                    }
                    
                    
                    
                } else if operators[i] == "-" {
                   
                    if i < stringNumbers.count-1 {
                        if operators[i+1] != "=" {
                            if operators[i+1] != "x" {
                                total -= number
                                
                                
                            }
                           
                        else
                            {mul1 = number}
                        }
                    }
                    else if i == stringNumbers.count-1 {
                        total -= number
                        
                        
                    }
                    
                    
                    
                    
                }
                
                else if operators[i] == "x" {
                    
                           if operators[i-1] == "-" {
          
                      total = total - (mul1 * number)
          
              }
             
                           else if operators[i-1] == "+" {
            
                  total = total + (mul1 * number)
                
              }
                
                
            }
       }
        }
        return total
        
    
    }
   
}
