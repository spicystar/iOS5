//
//  ViewController.swift
//  Practice2
//
//  Created by Kyuhan Shin on 2017. 9. 22..
//  Copyright © 2017년 Kyuhan Shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var plus: UILabel!
    @IBOutlet weak var minus: UILabel!
    @IBOutlet weak var divide: UILabel!
    @IBOutlet weak var multiply: UILabel!
    @IBOutlet weak var inch : UILabel!
    @IBOutlet weak var cm: UILabel!
    @IBOutlet weak var hoursTrans:UILabel!
    
    
    func addFn(num1 : Int, num2 : Int) -> Int{
        return num1+num2
    }
    func minFn(num3 : Int, num4 : Int) -> Int{
        return num3-num4
    }
    func divFn(num5: Int, num6 : Int) -> Int{
        return num5/num6
    }
    
    func mulFn(num7: Int, num8 : Int) -> Int{
        return num7+num8
    }
    
    //inch to cm
    
    
    func inchTrans(index1: Double) -> Double{
        return index1*2.54
    }
    //cm to inch
    func cmTrans(index2 : Double) -> Double{
        return index2/2.54
    }
    
    //시간 
    
    func sec(seconds: Int) -> Int{
        return seconds%100
    }
    func mins(minutes : Int) -> Int {
        return minutes%100*60
    }
    func hrs(hours : Int) -> Int {
        return hours/100*3600
    }


    override func viewDidLoad() {
    super.viewDidLoad()
    

        let add :Int = addFn(num1: 3, num2: 4)
        plus.text = String(add)
        
        let min : Int = minFn(num3 : 4, num4: 6)
        minus.text = String(min)
        
        let div : Int = divFn(num5: 6, num6: 3)
        divide.text = String(div)
    
        let mul : Int = mulFn(num7: 8, num8: 9)
        multiply.text = String(mul)
    
        let inchToCm : Double = inchTrans(index1: 1)
        inch.text = String(inchToCm)
        
        let cmToinch : Double = cmTrans(index2: 1)
        cm.text = String(cmToinch)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
