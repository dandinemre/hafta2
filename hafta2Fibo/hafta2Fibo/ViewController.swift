//
//  ViewController.swift
//  hafta2Fibo
//
//  Created by Emre Dandin on 10.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fibonacci(1000)
        lbl.text=String(result.dropLast())
        print(result1.dropLast())
        print(lbl.text!)
    }
    
    var result: String = ""
    var result1: String = ""
    var n1 = 0
    var n2 = 1
    var n3 = 0
    func fibonacci(_ n: Int) -> Void {
        
        if n == 1 {
            result.append("\(n1)")
        }else if n == 2 {
            result.append("\(n1),\(n2)")
        }
        else{
            result1="0,1,"
            for _ in 2..<n {
                n3 = n1 + n2
                n1=n2
                n2=n3
                if(n3<n){
                    result1.append("\(n3),")
                }
                if n3>=750 && n3<=n{
                    result.append("\(n3),")
                }
                if n3>n{
                 break
                }
                
            }
            
        }
        
    }
}

