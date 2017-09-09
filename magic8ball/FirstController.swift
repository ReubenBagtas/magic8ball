//
//  ViewController.swift
//  magic8ball
//
//  Created by caesar shia on 5/29/17.
//  Copyright © 2017 Code School. All rights reserved.
//

import UIKit

class firstController: UIViewController {
    var responseArray: [String] = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]
    
    @IBOutlet weak var Toplabel: UILabel!
    @IBOutlet weak var BottomLabel: UILabel!
    @IBOutlet weak var MiddleLabel: UILabel!
    
    
    
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake{
            print("Shook")
            let x = UInt32(responseArray.count)
            let num = Int(arc4random_uniform(x))
            var currentanswer = responseArray[num]
            MiddleLabel.text = currentanswer
            BottomLabel.text = "\(currentanswer)"
            
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(responseArray[0])
        MiddleLabel.text = nil
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

