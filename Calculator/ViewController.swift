//
//  ViewController.swift
//  Calculator
//
//  Created by xiaoyu on 10/4/15.
//  Copyright (c) 2015 xiaoyu. All rights reserved.
//

import Foundation
import Cocoa
class ViewController:NSObject{
    let calculator:Calculator
    @IBOutlet weak var window: NSWindow!
    @IBOutlet var textField:NSTextField!
    @IBOutlet var mField:NSTextField!
    @IBOutlet var opField:NSTextField!
    @IBAction func pressOne(sender:AnyObject){
        self.calculator.enterDigit("1")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressTwo(sender:AnyObject){
        self.calculator.enterDigit("2")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressThree(sender:AnyObject){
        self.calculator.enterDigit("3")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressFour(sender:AnyObject){
        self.calculator.enterDigit("4")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressFive(sender:AnyObject){
        self.calculator.enterDigit("5")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressSix(sender:AnyObject){
        self.calculator.enterDigit("6")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressSeven(sender:AnyObject){
        self.calculator.enterDigit("7")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressEight(sender:AnyObject){
        self.calculator.enterDigit("8")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressNine(sender:AnyObject){
        self.calculator.enterDigit("9")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressZero(sender:AnyObject){
        self.calculator.enterDigit("0")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressAdd(sender:AnyObject){
        self.calculator.add()
        self.textField.stringValue = self.calculator.screen
        self.opField.stringValue = self.calculator.op
    }
    @IBAction func pressSub(sender:AnyObject){
        self.calculator.sub()
        self.textField.stringValue = self.calculator.screen
        self.opField.stringValue = self.calculator.op
    }
    @IBAction func pressMul(sender:AnyObject){
        self.calculator.mul()
        self.textField.stringValue = self.calculator.screen
        self.opField.stringValue = self.calculator.op
    }
    @IBAction func pressDev(sender:AnyObject){
        self.calculator.dev()
        self.textField.stringValue = self.calculator.screen
        self.opField.stringValue = self.calculator.op
    }
    @IBAction func pressEqu(sender:AnyObject){
        self.calculator.equ()
        self.textField.stringValue = self.calculator.screen
        self.opField.stringValue = self.calculator.op
    }
    @IBAction func pressClear(sender:AnyObject){
        self.calculator.clear()
        self.textField.stringValue = self.calculator.screen
        self.opField.stringValue = self.calculator.op
    }
    @IBAction func pressPoint(sender:AnyObject){
        self.calculator.enterDigit(".")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressNeg(sender:AnyObject){
        self.calculator.getNeg()
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressMr(sender:AnyObject){
        self.calculator.mr()
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressMc(sender:AnyObject){
        self.calculator.mc()
        self.mField.stringValue = ""
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressMAdd(sender:AnyObject){
        self.calculator.mAdd()
        self.mField.stringValue = "M"
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressMSub(sender:AnyObject){
        self.calculator.mSub()
        self.textField.stringValue = self.calculator.screen
    }
    override func awakeFromNib() {
        
    }
    override init() {
        self.calculator = Calculator()
    }

}