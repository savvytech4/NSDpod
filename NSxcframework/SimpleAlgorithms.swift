//
//  SimpleAlgorithms.swift
//  NSxcframework
//
//  Created by Suraj on 25/03/24.
//

import Foundation
public class SimpleAlgorithms {
  
    public static let sharedInstance = SimpleAlgorithms()
    
    private init(){
        }
    
    public func fibonacci(_ n: Int) -> Int {
        var a = 1
        var b = 1
        guard n > 1 else { return a }

        (2...n).forEach { _ in
            (a, b) = (a + b, a)
        }
        return a
    }

    public func factorial(n: Int) -> Int {
        var result = 1
        if n > 0 {
            (1...n).forEach { i in
                result *= i
            }
        }
        return result
    }

}
