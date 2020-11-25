//
//  ViewController.swift
//  SwiftTest
//
//  Created by zoubenjun on 2020/11/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
//        print(greet(person: "Bill", from: "Cupertino"))
//        print(greet("Bill"))
        
//        block()
        

        struct Color {
            let red = 0, green = 0, blue: Double = 0
            var name: String = {
                "hello"
            }()
        }
        
        let magenta = Color()
        print(magenta)

    }

    func greet(person: String, from hometown: String) -> String {
        return "Hello \(person)!  Glad you could visit from \(hometown)."
    }

    func greet(_ person: String, from hometown: String = "Chengdu") -> String {
        return "Hello \(person)!  Glad you could visit from \(hometown)."
    }
    
    internal func block() {
        let names = ["Chris","Alex","Ewa","Barry","Daniella"]

        /// 1.非闭包，普通方式
        func backward(_ s1: String, _ s2: String) -> Bool {
            return s1 > s2
        }
        var reversedNames = names.sorted(by: backward)

        /// 2.普通闭包方式
        reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
            return s1 > s2
        })

        /// 3.普通闭包方式变形，和2一样，只是没有换行
        reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )

        /// 4.使用语境推断后可以简写为这样
        reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

        /// 5.单表达式闭包隐式返回,不需要写return
        reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )

        /// 6.简写的实际参数名
        reversedNames = names.sorted(by: { $0 > $1 } )

        /// 7.尾随闭包
        reversedNames = names.sorted() { $0 > $1 }

        /// 8.尾随闭包缩写
        reversedNames = names.sorted { $0 > $1 }
        
        print(reversedNames)
    }
    
}

