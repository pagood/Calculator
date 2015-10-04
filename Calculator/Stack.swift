//
//  Stack.swift
//  Calculator
//
//  Created by xiaoyu on 10/3/15.
//  Copyright (c) 2015 xiaoyu. All rights reserved.
//

import Foundation
class Stack<T>{
    var array = [T]()
    func push(element:T){
        self.array.append(element)
    }
    func size() -> Int{
        return self.array.count
    }
    func peek() -> T{
        return self.array[array.count - 1]
    }
    func pop() -> T{
        return self.array.removeLast()
    }
    func removeAll(){
        array.removeAll(keepCapacity: false)
    }
}