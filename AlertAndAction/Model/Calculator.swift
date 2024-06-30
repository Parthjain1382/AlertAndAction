//
//  Calculator.swift
//  AlertAndAction
//
//  Created by E5000846 on 04/06/24.
//

import Foundation


//Composite Number below the "number"
func compositeNumber(number: Int) -> String {
    var compositeStr = ""
    for i in 2...number {  // Start from 2 since 1 is neither prime nor composite
        if !isPrime(i) {
            compositeStr += " \(i)"
        }
    }
    return compositeStr
}

//Function To print the Prime Number
func primeNumber(number: Int) -> String {
    var primeStr = ""
    for i in 1...number {
        if isPrime(i) {
            if !primeStr.isEmpty {
                primeStr += ", "
            }
            primeStr += "\(i)"
        }
    }
    print(primeStr)
    return primeStr
}

func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}


//Integer Number
func integerNumber(number : Int) -> String{
    var intStr = ""
    for i in 0...number{
        intStr += " \(i)"
    }
    
    return intStr
}
