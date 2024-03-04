//
//  DEMOTests.swift
//  DEMOTests
//
//  Created by 渠晓友 on 2024/2/29.
//

import XCTest
@testable import DEMO
import Modelable

final class DEMOTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
        let jsonStr = """
{
  "FDnzT" : {
    "nKIBe" : [
      "asoak",
      "VpADx",
      "MuMbP"
    ],
    "knsKe" : true
  },
  "ZCJuS" : [
    "USnLi",
    "tPTLj",
    "zIjyK"
  ],
  "Mcxbo" : 6662.3999999999996,
  "jePaB" : false,
  "BzgpO" : [
    "zzWjA",
    "hHkXT",
    "XYfLj"
  ],
  "mlyTE" : true
}
"""
        
        if let data = jsonStr.data(using: .utf8),
           let dict = try? JSONSerialization.jsonObject(with: data) {
            print(dict)
            XCTAssert(dict is [String: Any], "error")
            
            
            let model = MyObj.mapping(jsonObject: dict)
            XCTAssert(model != nil, "error")
            print(model!)
        }
        
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

class FDnzT: Model {
    var nKIBe: [String]?
    var knsKe: Bool?
}

class MyObj: Model {
    var FDnzT: FDnzT?
    var ZCJuS: [String]?
    var Mcxbo: Double?
    var jePaB: Bool?
    var BzgpO: [String]?
    var mlyTE: Bool?
    var vvv: CGFloat? = 0
}

