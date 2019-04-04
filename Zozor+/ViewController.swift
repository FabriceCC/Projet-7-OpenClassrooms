//
//  ViewController.swift
//  CountOnMe
//
//  Created by Ambroise COLLON on 30/08/2016.
//  Copyright © 2016 Ambroise Collon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    
    var calcul = Calculate()
    
    
    var isExpressionCorrect: Bool {
        if let stringNumber = calcul.stringNumbers.last {
            if stringNumber.isEmpty {
                if calcul.stringNumbers.count == 1 {
                    let alertVC = UIAlertController(title: "Zéro!", message: "Démarrez un nouveau calcul !", preferredStyle: .alert)
                    alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    self.present(alertVC, animated: true, completion: nil)
                } else {
                    let alertVC = UIAlertController(title: "Zéro!", message: "Entrez une expression correcte !", preferredStyle: .alert)
                    alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    self.present(alertVC, animated: true, completion: nil)
                }
                return false
            }
        }
        return true
    }

    var canAddOperator: Bool {
        if let stringNumber = calcul.stringNumbers.last {
            if stringNumber.isEmpty {
                let alertVC = UIAlertController(title: "Zéro!", message: "Expression incorrecte !", preferredStyle: .alert)
                alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(alertVC, animated: true, completion: nil)
                return false
            }
        }
        return true
    }

  
    
    
    // MARK: - Outlets

    @IBOutlet weak var textView: UITextView!
    @IBOutlet var numberButtons: [UIButton]!

    // MARK: - Action

    @IBAction func tappedNumberButton(_ sender: UIButton) {
        for (i, numberButton) in numberButtons.enumerated() {
            if sender == numberButton {
                addNewNumber(i)
            }
        }
    }

 
    @IBAction func mult() {
        if canAddOperator {
            calcul.operators.append("x")
            calcul.stringNumbers.append("")
            updateDisplay()
        }
    }
    
    
    
    @IBAction func plus() {
        if canAddOperator {
        	calcul.operators.append("+")
        	calcul.stringNumbers.append("")
            updateDisplay()
        }
    }

    @IBAction func minus() {
        if canAddOperator {
            calcul.operators.append("-")
            calcul.stringNumbers.append("")
            updateDisplay()
        }
    }

    @IBAction func equal() {
        if !isExpressionCorrect {
                  return
        }
        let total = calcul.calculateTotal()
        textView.text = textView.text + "=\(total)"
        clear()
    }


    // MARK: - Methods

    func addNewNumber(_ newNumber: Int) {
        if let stringNumber = calcul.stringNumbers.last {
            var stringNumberMutable = stringNumber
            stringNumberMutable += "\(newNumber)"
            calcul.stringNumbers[calcul.stringNumbers.count-1] = stringNumberMutable
        }
        updateDisplay()
    }

   

    func updateDisplay() {
        var text = ""
        for (i, stringNumber) in calcul.stringNumbers.enumerated() {
            // Add operator
            if i > 0 {
                text += calcul.operators[i]
            }
            // Add number
            text += stringNumber
        }
        textView.text = text
    }

    func clear() {
        calcul.stringNumbers = [String()]
        calcul.operators = ["+"]
        calcul.index = 0
    }
}
