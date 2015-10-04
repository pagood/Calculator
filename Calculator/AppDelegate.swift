//
//  AppDelegate.swift
//  Calculator
//
//  Created by xiaoyu on 10/2/15.
//  Copyright (c) 2015 xiaoyu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    let calculator:Calculator
    @IBOutlet weak var window: NSWindow!
    @IBOutlet var textField:NSTextField!
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
    }
    @IBAction func pressSub(sender:AnyObject){
        self.calculator.sub()
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressMul(sender:AnyObject){
        self.calculator.mul()
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressDev(sender:AnyObject){
        self.calculator.dev()
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressEqu(sender:AnyObject){
        self.calculator.equ()
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressClear(sender:AnyObject){
        self.calculator.clear()
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressPoint(sender:AnyObject){
        self.calculator.enterDigit(".")
        self.textField.stringValue = self.calculator.screen
    }
    @IBAction func pressNeg(sender:AnyObject){
        self.calculator.getNeg()
        self.textField.stringValue = self.calculator.screen
    }
    override func awakeFromNib() {
        
    }
    override init() {
        self.calculator = Calculator()
    }
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

