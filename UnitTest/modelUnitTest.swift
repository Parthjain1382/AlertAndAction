//
//  modelUnitTest.swift
//  UnitTest
//
//  Created by E5000846 on 04/06/24.
//

import XCTest
@testable import AlertAndAction
final class modelUnitTest: XCTestCase {

        func testCompositeNumber() {
            let result = compositeNumber(number: 30)
            XCTAssertEqual(result, " 4 6 8 9 10 12 14 15 16 18 20 21 22 24 25 26 27 28 30")
        }
        
        func testPrimeNumber() {
            let result = primeNumber(number: 30)
            XCTAssertEqual(result, "2, 3, 5, 7, 11, 13, 17, 19, 23, 29")
        }
        
        func testIntegerNumber() {
            let result = integerNumber(number: 30)
            XCTAssertEqual(result, " 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30")
        }
        
        func testIsPrime() {
            XCTAssertTrue(isPrime(2))
            XCTAssertTrue(isPrime(3))
            XCTAssertFalse(isPrime(4))
            XCTAssertTrue(isPrime(5))
            XCTAssertFalse(isPrime(1))
            XCTAssertFalse(isPrime(0))
            XCTAssertFalse(isPrime(-1))
        }

        var viewController: ViewController!

        override func setUpWithError() throws {
            try super.setUpWithError()
            viewController = ViewController()
            viewController.loadViewIfNeeded()
        }

        override func tearDownWithError() throws {
            viewController = nil
            try super.tearDownWithError()
        }

        func testShowAlert() {
            // Given
            let title = "Test Title"
            let message = "Test Message"
            
            // When
            viewController.showAlert(title: title, message: message)
            
            // Then
            XCTAssertTrue(viewController.presentedViewController is UIAlertController)
            let alertController = viewController.presentedViewController as? UIAlertController
            XCTAssertEqual(alertController?.title, title)
            XCTAssertEqual(alertController?.message, message)
        }

        func testShowActionSheet() {
            // When
            viewController.showActionSheet()
            
            // Then
            XCTAssertTrue(viewController.presentedViewController is UIAlertController)
            let actionSheet = viewController.presentedViewController as? UIAlertController
            XCTAssertEqual(actionSheet?.preferredStyle, .actionSheet)
        }
        
        func testAlertButton() {
            // Given
            let button = UIButton()
            
            // When
            viewController.alertButton(button)
            
            // Then
            XCTAssertEqual(button.backgroundColor, .gray)
            XCTAssertEqual(button.layer.cornerRadius, 14)
        }
    }


