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
}
//GivenPostHasZeroLike_WhenPostIsLiked_ThenPostHasOneLike
// ETANT DONNÉ QUE le poste n'a pas de like
// QUAND le poste est liké
// ALORS le poste a un like
