//
//  Question3.swift
//  Assignment2-advSwift
//
//  Created by Cambrian on 2022-10-17.
//

import Foundation
/**
 create a parent class and a subclass
 
 PARENT CLASS:
 class name:
 - Computer
 attributes:
 - cpu: String
 - gpu: String
 - ram: Int
 - state: String = "Off"
 - temp: Double
 methods:
 - init(cpu: String, gpu: String, ram: Int, temp: Double)
 - upgradeRam(newAmount: Int)
 - turnOn() => will set the state to 'On'
 - turnOff() => will set the state to 'Off'
 - getTemp() -> Double
 
 
 CHILD CLASS:
 class name:
 - Laptop
 attributes:
 - isRamUpgradable: Bool
 - screenSize: Double
 - isTouchScreen: Bool
 methods:
 - init(cpu: String, gpu: String, ram: Int, state: String, temp: Double, isRamUpgradable: Bool, screenSize: Double, isTouchScreen: Bool)
 - override upgradeRam() => if the ram is not upgradable do nothing
 - closeScreen() => this will set the laptop state to 'Sleep'
 */

//Answers
//PARENT CLASS:
class Computer {
    var cpu: String
    var gpu: String
    var ram: Int
    var state: String = "Off"
    var temp: Double
    
    init(cpu: String, gpu: String, ram: Int, temp: Double) {
        self.cpu = cpu
        self.gpu = gpu
        self.ram = ram
        self.temp = temp
    }
    
    func upgradeRam(newAmount: Int) {
        ram = newAmount
    }
    
    func turnOn() {
        state = "On"
    }
    
    func turnOff() {
        state = "Off"
    }
    
    func getTemp() -> Double {
        return temp
    }
}


class Laptop : Computer{
    var isRamUpgradable: Bool
    var screenSize: Double
    var isTouchScreen: Bool
    
    init(cpu: String, gpu: String, ram: Int, state: String, temp: Double, isRamUpgradable: Bool, screenSize: Double, isTouchScreen: Bool) {
        super.init(cpu: <#T##String#>, gpu: <#T##String#>, ram: <#T##Int#>, temp: <#T##Double#>)
        self.cpu = cpu
        self.gpu = gpu
        self.ram = ram
        self.state = state
        self.temp = temp
        self.isRamUpgradable = isRamUpgradable
        self.screenSize = screenSize
        self.isTouchScreen = isTouchScreen
    }
    
    override func upgradeRam(newAmount: Int) {
        if (isRamUpgradable == true){
            self.upgradeRam(newAmount: newAmount)
        }
    }
    
    func closeScreen(){
        self.turnOff()
    }
    
}


