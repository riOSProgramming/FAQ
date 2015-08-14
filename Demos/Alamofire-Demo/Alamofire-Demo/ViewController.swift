//
//  ViewController.swift
//  Alamofire-Demo
//
//  Created by Thomas Denney on 14/08/2015.
//  Copyright (c) 2015 Programming Thomas. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "http://httpbin.org/get")
            .responseJSON { _, _, JSON, _ in
                println(JSON)
                let jsonDictionary = JSON as! NSDictionary
                println(jsonDictionary["url"]!)
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

