//
//  ViewController.swift
//  xyf11.28
//
//  Created by XYF on 2018/11/28.
//  Copyright © 2018 XYF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    var result_1 = ""
    var re = 0
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
            let a = Double(result_1)!
            let b = Double(result.text!)!
            let c = a + b
            result_1 = String(c)
            result.text = result_1
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
            number = 1
            re = 1
        }
    }
    @IBAction func subtruct(_ sender: Any) {
        if add == 1{
            let a = Double(result_1)!
            let b = Double(result.text!)!
            let c = a - b
            result_1 = String(c)
            result.text = result_1
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
            let a = Double(result_1)!
            let b = Double(result.text!)!
            let c = a * b
            result_1 = String(c)
            result.text = result_1
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
            let a = Double(result_1)!
            let b = Double(result.text!)!
            let c = a / b
            result_1 = String(c)
            result.text = result_1
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
            re = 0
        }
        if judge == 1{
            result.text = result.text
        }
        else{
            if result.text == ""{
                result.text = ""
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
                c = a + b
                result.text = String(c)
            }
            if number == 2{
                c = a - b
                result.text = String(c)
            }
            if number == 3{
                c = a * b
                result.text = String(c)
            }
            if number == 4{
                c = a / b
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

