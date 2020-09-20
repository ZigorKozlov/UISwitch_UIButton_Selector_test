//
//  ViewController.swift
//  UISwitchTest
//
//  Created by Игорь Козлов on 20.09.2020.
//  Copyright © 2020 Игорь Козлов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mySwitch = UISwitch()
    let myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        myButton.isSpringLoaded = true
        //Set settings for switch
        mySwitch.isOn = true
        mySwitch.onTintColor = UIColor.blue// Цвет переключателя, когда она включён
        mySwitch.backgroundColor = UIColor.clear // Цвет задней области(прямоугольник за свичом)
        mySwitch.thumbTintColor = UIColor.red//Цвет ползунка
        //
        //Set switch and button position
        myButton.frame  = CGRect(origin: view.center, size: CGSize(width: 150, height: 100))
        mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)//set x & y
                    
        //add action for mySwitch. If mySwitch on self was edited, then action(switchDidEdit) is caled
        mySwitch.addTarget(self, action: #selector(switchDidEdit(target:)), for: .valueChanged)// #selector called than self.mySwitch  didEdidt
        
        myButton.setTitle("Кнопка отжата ", for: .normal)
        myButton.setTitle("Кнопка ННННАНАААЖАТА", for: .highlighted)
        myButton.backgroundColor = UIColor.black
        myButton.titleLabel?.textColor = UIColor.green
        //add Subview: myButton, myswitch for view
        self.view.addSubview(myButton)
        self.view.addSubview(mySwitch)//add mySwitch in view
        
        
    }
    
    
    @objc func switchDidEdit(target: UISwitch) {
        if target.isOn {
            self.myButton.isUserInteractionEnabled = true
        } else {
            self.myButton.isUserInteractionEnabled = false
        }
    }

}

