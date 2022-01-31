//
//  ViewController.swift
//  Book1_TabBarController
//
//  Created by 김재훈 on 2022/01/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController is loaded.")
    }

    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnMoveTextView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    
    deinit {
        print("ViewController is unloaded.")
    }
}

