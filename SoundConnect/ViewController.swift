//
//  ViewController.swift
//  SoundConnect
//
//  Created by Kouki Saito on 2015/09/22.
//  Copyright © 2015年 Kouki Siato. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func c3Tapepd(sender: UIButton) {
        sendTone("4C")
    }
    
    @IBAction func d3Tapepd(sender: UIButton) {
        sendTone("4D")
    }
    
    @IBAction func e3Tapepd(sender: UIButton) {
        sendTone("4E")
    }
    @IBAction func f3Tapepd(sender: UIButton) {
        sendTone("4F")
    }
    @IBAction func g3Tapepd(sender: UIButton) {
        sendTone("4G")
    }
    @IBAction func a3Tapepd(sender: UIButton) {
        sendTone("4A")
    }
    @IBAction func b3Tapepd(sender: UIButton) {
        sendTone("4B")
    }
    @IBAction func c4Tapepd(sender: UIButton) {
        sendTone("5C")
    }

    func sendTone(tone: String) {
        let data = [
            "alert" : "Pushed \(tone)",
            "badge" : "Increment",
            "sound" : "\(tone).caf"
        ]

        let push = PFPush()
        push.setChannel("All")
        push.setData(data)
        push.sendPushInBackground()
    }
    
}

