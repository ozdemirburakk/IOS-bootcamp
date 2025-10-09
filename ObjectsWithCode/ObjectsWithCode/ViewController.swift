//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Burak Özdemir on 9.10.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let myLabel = UILabel()
    var myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        myLabel.text = "test label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5, width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
        
        myButton.setTitle( "My Button", for: .normal)
        myButton.setTitleColor( .blue, for: .normal)
        myButton.frame = CGRect(x: width * 0.5 - width * 0.4 / 2, y: height * 0.5 + 60, width: width * 0.4, height: 50)
        view.addSubview(myButton)
        
        myButton.addTarget(self , action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        
        
    }
    
    @objc func myAction() {
        myLabel.text = "tapped"
    }
}

