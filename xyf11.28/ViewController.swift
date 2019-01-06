//
//  ViewController.swift
//  xyf11.28
//
//  Created by XYF on 2018/11/28.
//  Copyright © 2018 XYF. All rights reserved.
//

import UIKit
import LocalAuthentication
class ViewController: UIViewController {
    func errorMessageForLAErrorCode(errorCode: Int) -> String {
        var message = ""
        
        switch errorCode {
        case LAError.appCancel.rawValue:
            message = "Authentication was cancelled by application"
            
        case LAError.authenticationFailed.rawValue:
            message = "The user failed to provide valid credentials"
            
        case LAError.invalidContext.rawValue:
            message = "The context is invalid"
            
        case LAError.passcodeNotSet.rawValue:
            message = "Passcode is not set on the device"
            
        case LAError.systemCancel.rawValue:
            message = "Authentication was cancelled by the system"
            
        case LAError.touchIDLockout.rawValue:
            message = "Too many failed attempts."
            
        case LAError.userCancel.rawValue:
            message = "The user did cancel"
            
        case LAError.userFallback.rawValue:
            message = "The user chose to use the fallback"
            
        default:
            message = "Did not find error code on LAError object"
        }
        return message
    }
    
    func touchID (){
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            // 开始进入识别状态，以闭包形式返回结果。闭包的 success 是布尔值，代表识别成功与否。error 为错误信息。
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "请用指纹解锁", reply: {success, error in
                
                if success {
                    // 成功之后的逻辑， 通常使用多线程来实现跳转逻辑。
                }else {
                    if let error = error as? NSError {
                        // 获取错误信息
                        let message = self.errorMessageForLAErrorCode(errorCode: error.code)
                        print(message)
                    }
                }
            })
        }
    }
    
   
    @IBAction func touchID(_ sender: Any) {
        touchID()
    }
   
  
    @IBOutlet weak var result: UILabel!
    var result_1 = ""
    var re = 1
    var add = 0
    var number = 0
    var judge = 0
    
    @IBAction func clean(_ sender: Any) {
        result.text = ""
    }
    @IBAction func percent(_ sender: Any) {
        let count = Double(result.text!)!
        let count2 = count * 0.01
        result.text = String(count2)
        re = 0
    }
    @IBAction func change(_ sender: Any) {
        let count = Double(result.text!)!
        let count2 = -count
        result.text = String(count2)
        re = 0
    }
    @IBAction func plus(_ sender: Any) {
        if add == 1{
            var c = 0.0
            let a = Double(result_1)!
            let b = Double(result.text!)!
            if number == 1{
                c = ((a * 1000000) + (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 2{
                c = ((a * 1000000) - (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 3{
                c = ((a * 1000000) * (b * 1000000))/1000000000000
                result.text = String(c)
            }
            if number == 4{
                c = (a * 1000000) / (b * 1000000)
                result.text = String(c)
            }
            result.text = String(c)
            var xyf:String = result.text!
            while xyf.last == "0"{
                xyf.removeLast()
                print(xyf)
            }
            while xyf.last == "."{
                xyf.removeLast()
                print(xyf)
            }
            result.text = xyf
            result_1 = String(c)
            judge = 0
            number = 1
            re = 1
            
        }
        else{
            if result.text == ""{
            result.text = ""
            }
            add = 1
            let x = result.text!
            result_1 = String(x)
            result.text = result_1
            judge = 0
            number = 1
            re = 1
        }
    }
    @IBAction func subtruct(_ sender: Any) {
        if add == 1{
            var c = 0.0
            let a = Double(result_1)!
            let b = Double(result.text!)!
            if number == 1{
                c = ((a * 1000000) + (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 2{
                c = ((a * 1000000) - (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 3{
                c = ((a * 1000000) * (b * 1000000))/1000000000000
                result.text = String(c)
            }
            if number == 4{
                c = (a * 1000000) / (b * 1000000)
                result.text = String(c)
            }
            result.text = String(c)
            var xyf:String = result.text!
            while xyf.last == "0"{
                xyf.removeLast()
                print(xyf)
            }
            while xyf.last == "."{
                xyf.removeLast()
                print(xyf)
            }
            result.text = xyf
            result_1 = String(c)
            number = 2
            re = 1
        }
        else{
            if result.text == ""{
                result.text = ""
            }
            add = 1
            let x = result.text!
            result_1 = String(x)
            result.text = result_1
            number = 2
            re = 1
        }
    }
    @IBAction func multiply(_ sender: Any) {
        if add == 1{
            var c = 0.0
            let a = Double(result_1)!
            let b = Double(result.text!)!
            if number == 1{
                c = ((a * 1000000) + (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 2{
                c = ((a * 1000000) - (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 3{
                c = ((a * 1000000) * (b * 1000000))/1000000000000
                result.text = String(c)
            }
            if number == 4{
                c = (a * 1000000) / (b * 1000000)
                result.text = String(c)
            }
            result.text = String(c)
            var xyf:String = result.text!
            while xyf.last == "0"{
                xyf.removeLast()
                print(xyf)
            }
            while xyf.last == "."{
                xyf.removeLast()
                print(xyf)
            }
            result.text = xyf
            result_1 = String(c)
            number = 3
            re = 1
        }
        else{
            if result.text == ""{
                result.text = ""
            }
            add = 1
            let x = result.text!
            result_1 = String(x)
            result.text = result_1
            number = 3
            re = 1
        }
    }
    @IBAction func divide(_ sender: Any) {
        if add == 1{
            var c = 0.0
            let a = Double(result_1)!
            let b = Double(result.text!)!
            if number == 1{
                c = ((a * 1000000) + (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 2{
                c = ((a * 1000000) - (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 3{
                c = ((a * 1000000) * (b * 1000000))/1000000000000
                result.text = String(c)
            }
            if number == 4{
                c = (a * 1000000) / (b * 1000000)
                result.text = String(c)
            }
            result.text = String(c)
            var xyf:String = result.text!
            while xyf.last == "0"{
                xyf.removeLast()
                print(xyf)
            }
            while xyf.last == "."{
                xyf.removeLast()
                print(xyf)
            }
            result.text = xyf
            result_1 = String(c)
            number = 4
            re = 1
        }
        else{
            if result.text == ""{
                result.text = ""
            }
            add = 1
            let x = result.text!
            result_1 = String(x)
            result.text = result_1
            number = 4
            re = 1
        }
    }
    @IBAction func dot(_ sender: Any) {
        if re == 1{
            result.text = "0."
            judge = 1
            re = 0
        }
        if judge == 1{
            result.text = result.text
        }
        else{
            if result.text == ""{
                result.text = "0."
                judge = 1
            }
            else{
                result.text = result.text! + "."
                judge = 1
            }
        }
    }
    @IBAction func number1(_ sender: Any) {
        if re == 1{
            result.text = "1"
            re = 0
        }else{
            result.text = result.text! + "1"
        }
    }
    @IBAction func number2(_ sender: Any) {
        if re == 1{
            result.text = "2"
            re = 0
        }else{
            result.text = result.text! + "2"
        }
    }
    @IBAction func number3(_ sender: Any) {
        if re == 1{
            result.text = "3"
            re = 0
        }else{
            result.text = result.text! + "3"
        }
    }
    @IBAction func number4(_ sender: Any) {
        if re == 1{
            result.text = "4"
            re = 0
        }else{
            result.text = result.text! + "4"
        }
    }
    @IBAction func number5(_ sender: Any) {
        if re == 1{
            result.text = "5"
            re = 0
        }else{
            result.text = result.text! + "5"
        }
    }
    @IBAction func number6(_ sender: Any) {
        if re == 1{
            result.text = "6"
            re = 0
        }else{
            result.text = result.text! + "6"
        }
    }
    @IBAction func number7(_ sender: Any) {
        if re == 1{
            result.text = "7"
            re = 0
        }else{
            result.text = result.text! + "7"
        }
    }
    @IBAction func number8(_ sender: Any) {
        if re == 1{
            result.text = "8"
            re = 0
        }else{
            result.text = result.text! + "8"
        }
    }
    @IBAction func number9(_ sender: Any) {
        if re == 1{
            result.text = "9"
            re = 0
        }else{
            result.text = result.text! + "9"
        }
    }
    @IBAction func number0(_ sender: Any) {
        if re == 1{
            result.text = "0"
            re = 0
        }else{
            result.text = result.text! + "0"
        }
    }
    @IBAction func equal(_ sender: Any) {
        if result.text == ""{
            result.text = ""
        }
        else{
            let a = Double(result_1)!
            let b = Double(result.text!)!
            var c = 0.0
            if number == 1{
                c = ((a * 1000000) + (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 2{
                c = ((a * 1000000) - (b * 1000000))/1000000
                result.text = String(c)
            }
            if number == 3{
                c = ((a * 1000000) * (b * 1000000))/1000000000000
                result.text = String(c)
            }
            if number == 4{
                c = (a * 1000000) / (b * 1000000)
                result.text = String(c)
            } 
            result.text = String(c)
            var xyf:String = result.text!
            while xyf.last == "0"{
                xyf.removeLast()
                print(xyf)
            }
            while xyf.last == "."{
                xyf.removeLast()
                print(xyf)
            }
            result.text = xyf
            judge = 0
            add = 0
            re = 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

