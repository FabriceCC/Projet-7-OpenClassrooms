//
//  FabriceCountOnMeTests.swift
//  FabriceCountOnMeTests
//
//  Created by utilisateur on 04/04/2019.
//  Copyright © 2019 Fabrice Conchou. All rights reserved.
//

import XCTest
@testable import CountOnMe

class FabriceCountOnMeTests: XCTestCase {

    var calcul: Calculate!
    
    override func setUp() {
        super.setUp()
        calcul = Calculate()
        
        }
    
    
    func testGivenNumbers_WhenUse_ThenNotNil() {
       
     
        XCTAssertNotNil(calcul.stringNumbers)
        
    }
    
    func testGivenOperators_WhenUse_ThenNotNil() {
        
        
        XCTAssertNotNil(calcul.operators)
        
    }
    
    func testGivenIndex_WhenUse_ThenNotNil() {
        
        
        XCTAssertNotNil(calcul.index)
        
    }
    
    func testGivenTotal_WhenUse_ThenNotNil() {
        
        
        XCTAssertNotNil(calcul.calculateTotal())
        
    }
    
    func testAdd_WhenUse_ThenOK() {
        
        calcul.operators = ["+","+","="]
        calcul.stringNumbers = ["2","3"]
        
        XCTAssert(calcul.calculateTotal() == 5)
        
    }
    
    func testMin_WhenUse_ThenOK() {
        
        calcul.operators = ["+","-","="]
        calcul.stringNumbers = ["6","3"]
        
        XCTAssert(calcul.calculateTotal() == 3)
        
    }
    
    func testMul_WhenUse_ThenOK() {
        
        calcul.operators = ["+","x","="]
        calcul.stringNumbers = ["6","3"]
        
        XCTAssert(calcul.calculateTotal() == 18)
        
    }
   
    func testAdd2_WhenUse_ThenOK() {
        
        calcul.operators = ["+","+","x","="]
        calcul.stringNumbers = ["2","3","5"]
        
        XCTAssert(calcul.calculateTotal() == 17)
        
    }
    
    func testMinMul_WhenUse_ThenOK() {
        
        calcul.operators = ["+","-","x","="]
        calcul.stringNumbers = ["2","3","5"]
        
        XCTAssert(calcul.calculateTotal() == -13)
        
    }
    
    func testMinAdd_WhenUse_ThenOK() {
        
        calcul.operators = ["+","-","+",]
        calcul.stringNumbers = ["2","3","4"]
        
        XCTAssert(calcul.calculateTotal() == 3)
        
    }
    
    func testMinMin_WhenUse_ThenOK() {
        
        calcul.operators = ["+","-","-","="]
        calcul.stringNumbers = ["2","3","4"]
        
        XCTAssert(calcul.calculateTotal() == -5)
        
    }
    
}
//GivenPostHasZeroLike_WhenPostIsLiked_ThenPostHasOneLike
// ETANT DONNÉ QUE le poste n'a pas de like
// QUAND le poste est liké
// ALORS le poste a un like
