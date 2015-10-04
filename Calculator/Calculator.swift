//
//  Calculator.swift
//  Calculator
//
//  Created by xiaoyu on 10/3/15.
//  Copyright (c) 2015 xiaoyu. All rights reserved.
//

import Foundation
class Calculator{
    var opStack:Stack<String>
    var stack:Stack<Int>
    var temp:Int
    var screen:String
    var pre:String
    init(){
        self.opStack = Stack<String>()
        self.stack = Stack<Int>()
        self.temp = 0
        self.screen = "0"
        self.pre = "="
    }
    func test(){
        print(stack.peek())
    }
    func enterDigit(digit:Int){
        if(pre == "="){
            temp = 0
        }
        temp = temp * 10 + digit
        screen = String(temp)
        pre = String(digit)
    }
    func equ(){
        stack.push(temp)
        temp = 0
        while stack.size() > 1 && opStack.size() > 0{
            var n = helper(stack.pop(), num2: stack.pop(), op: opStack.pop())
            stack.push(n)
        }
        temp = stack.pop()
        screen = String(temp)
        pre = "="
    }
    func clear(){
        stack.removeAll()
        opStack.removeAll()
        temp = 0
        screen = "0"
        pre = ""
    }

    func add(){
        if(pre == "+" || pre == "-" || pre == "*" || pre == "/"){
            opStack.pop()
            opStack.push("+")
        }
        stack.push(temp)
        temp = 0
        while stack.size() > 1 && opStack.size() > 0{
            var n = helper(stack.pop(), num2: stack.pop(), op: opStack.pop())
            stack.push(n)
        }
        opStack.push("+")
        screen = stack.size() > 0 ? String(stack.peek()) : "0"
        pre = "+"
    }
    func sub(){
        if(pre == "+" || pre == "-" || pre == "*" || pre == "/"){
            opStack.pop()
            opStack.push("-")
        }
        stack.push(temp)
        temp = 0
        while stack.size() > 1 && opStack.size() > 0{
            var n = helper(stack.pop(), num2: stack.pop(), op: opStack.pop())
            stack.push(n)
        }
        opStack.push("-")
        screen = stack.size() > 0 ? String(stack.peek()) : "0"
        pre = "-"
    }
    func mul(){
        if(pre == "+" || pre == "-" || pre == "*" || pre == "/"){
            opStack.pop()
            opStack.push("*")
        }
        stack.push(temp)
        temp = 0
        if stack.size() > 1 && opStack.size() > 0{
            if opStack.peek() == "+" || opStack.peek() == "-"{
                opStack.push("*")
            }
            else{
                var n = helper(stack.pop(), num2: stack.pop(), op: opStack.pop())
                stack.push(n)
                opStack.push("*")
            }
        }
        else{
            opStack.push("*")
        }
        screen = stack.size() > 0 ? String(stack.peek()) : "0"
        pre = "*"
    }
    func dev(){
        if(pre == "+" || pre == "-" || pre == "*" || pre == "/"){
            opStack.pop()
            opStack.push("/")
        }
        stack.push(temp)
        temp = 0
        if stack.size() > 1 && opStack.size() > 0{
            if opStack.peek() == "+" || opStack.peek() == "-"{
                opStack.push("/")
            }
            else{
                var n = helper(stack.pop(), num2: stack.pop(), op: opStack.pop())
                stack.push(n)
                opStack.push("/")
            }
        }
        else{
            opStack.push("/")
        }
        screen = stack.size() > 0 ? String(stack.peek()) : "0"
        pre = "/"
    }
    func helper(num1:Int,num2:Int,op:String) -> Int{
        var ans:Int
        switch op{
        case "+":
            ans = num2 + num1
            break
        case "-":
            ans = num2 - num1
            break
        case "*":
            ans = num2 * num1
            break
        case "/":
            ans = num2 / num1
            break
        default:
            ans = 0
        }
        return ans
    }
}