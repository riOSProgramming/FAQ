//
//  ViewController.swift
//  JSON
//
//  Created by Thomas Denney on 14/08/2015.
//  Copyright (c) 2015 Programming Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        //Standard library request to http://httpbin.org
        let session = NSURLSession.sharedSession()
        
        //Prepare the request
        let url = NSURL(string: "http://httpbin.org/get")!
        let request = NSURLRequest(URL: url)
        
        //Prepare the data task
        let task = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            //Warning: this closure is not executed on the main thread, so don't update the UI in here!
            let httpResponse = response as! NSHTTPURLResponse
            if httpResponse.statusCode == 200 {
                let json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.allZeros, error: nil) as! NSDictionary
                println(json)
                println(json["url"]!)
            }
        })
        
        //Begin the task
        task.resume()
    }
}

