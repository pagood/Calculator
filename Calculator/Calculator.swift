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
    var stack:Stack<Double>
    var res:String
    var screen:String
    var pre:String
    init(){
        self.opStack = Stack<String>()
        self.stack = Stack<Double>()
        self.screen = "0"
        self.pre = "="
        self.res = ""
    }
    func test(){
        print(stack.peek())
    }

    func enterDigit(digit:String){
        if(pre == "="){
            res = ""
        }
        res = res + digit
        screen = res
        pre = digit
    }
    func equ(){
        if(pre != "-"){
            let str = NSString(string: res)
            stack.push(str.doubleValue)
            while stack.size() > 1 && opStack.size() > 0{
                var n = helper(stack.pop(), num2: stack.pop(), op: opStack.pop())
                stack.push(n)
            }
            res = helperToString(stack.pop())
            screen = res
            pre = "="
        }
    }
    func clear(){
        stack.removeAll()
        opStack.removeAll()
        res = ""
        screen = "0"
        pre = ""
    }

    func add(){
        if(pre == "+" || pre == "-" || pre == "*" || pre == "/"){
            opStack.pop()
            opStack.push("+")
        }
        else{
            let str = NSString(string: res)
            stack.push(str.doubleValue)
            res = ""
            while stack.size() > 1 && opStack.size() > 0{
                var n = helper(stack.pop(), num2: stack.pop(), op: opStack.pop())
                stack.push(n)
            }
            opStack.push("+")
            screen = stack.size() > 0 ? helperToString(stack.peek()) : "0"
            pre = "+"
        }
    }
    func sub(){
        if(pre == "+" || pre == "-" || pre == "*" || pre == "/"){
            opStack.pop()
            opStack.push("-")
        }
        else{
            let str = NSString(string: res)
            stack.push(str.doubleValue)
            res = ""
            while stack.size() > 1 && opStack.size() > 0{
                var n = helper(stack.pop(), num2: stack.pop(), op: opStack.pop())
                stack.push(n)
            }
            opStack.push("-")
            screen = stack.size() > 0 ? helperToString(stack.peek())  : "0"
            pre = "-"
        }
    }
    func mul(){
        if(pre == "+" || pre == "-" || pre == "*" || pre == "/"){
            opStack.pop()
            opStack.push("*")
        }
        else{
            let str = NSString(string: res)
            stack.push(str.doubleValue)
            res = ""
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
            screen = stack.size() > 0 ? helperToString(stack.peek())  : "0"
            pre = "*"
        }
    }
    func dev(){
        if(pre == "+" || pre == "-" || pre == "*" || pre == "/"){
            opStack.pop()
            opStack.push("/")
        }
        else{
            let str = NSString(string: res)
            stack.push(str.doubleValue)
            res = ""
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
            screen = stack.size() > 0 ? helperToString(stack.peek())  : "0"
            pre = "/"
        }
    }
    func helper(num1:Double,num2:Double,op:String) -> Double{
        var ans:Double
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
    func helperToString(num:Double) -> String{
        var dif:Double = num - Double(Int(num))
        if dif > 0 || dif < 0{
        //dont need to
                return num.description
        }
        else{
            return String(Int(num))
        }
        
    }
    func getNeg(){
        if(pre != "+" && pre != "-" && pre != "*" && pre != "/"){
            let str = NSString(string: res)
            if str.doubleValue > 0{
                res = "-" + res
                screen = res
            }
            else if str.doubleValue < 0{
                res = str.substringFromIndex(1)
                screen = res
            }
        }
        else{
            let temp = stack.pop() * (-1)
            stack.push(temp)
            screen = helperToString(temp)
            
            
        }
    }
}