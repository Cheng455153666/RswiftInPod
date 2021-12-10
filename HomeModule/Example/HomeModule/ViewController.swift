//
//  ViewController.swift
//  HomeModule
//
//  Created by liqing.Cheng on 12/10/2021.
//  Copyright (c) 2021 liqing.Cheng. All rights reserved.
//

import UIKit
import HomeModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let vc = OutputHandle.targetVC() {
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}

