//
//  ViewController.swift
//  nabeatsu
//
//  Created by Koki Ide on 2017/04/21.
//  Copyright (c) 2017年 Koki Ide All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 0
    var checkNum: Int = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var faceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(0)
    }
    
    
    @IBAction func plusButton(){
        number = number + 1
        label.text = String(number)
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            faceLabel.text = "(゜o゜)"
        }
    }
    @IBAction func clear(){
        number = 0
        checkNum = 0
        label.text = String(number)
        faceLabel.text = "(゜o゜)"
    }


    
    func isAho() ->Bool{
        checkNum = number
        //問題1: ３の倍数かどうか調べる
        if number % 3 == 0{
            return true
        }
        while (checkNum != 0){
        if checkNum % 10 == 3{
            return true
        }else{
            checkNum = checkNum / 10
            }
        }
        return false
        }
//問題3,問題4
        //問題4をやるときは問題3の答えをコメントアウトしてから書こう
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
