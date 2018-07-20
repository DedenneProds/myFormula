//
//  sources.swift
//  Formulaes
//
//  Created by Michael K Miyajima on 7/28/17.
//  Copyright © 2017 Michael Miyajima. All rights reserved.
//

import Foundation


public struct Stack<T> {
    fileprivate var array = [T]()
    
    public init() {
        
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
}

extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<T> {
        var curr = self
        return AnyIterator { _ -> T? in
            return curr.pop()
        }
    }
}
