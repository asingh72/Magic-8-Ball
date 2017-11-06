//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Anurag Singh on 9/23/17.
//  Copyright © 2017 Anurag Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBall : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBall()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func changeBall(){
        
        randomBall=Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBall])
        
        
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        changeBall()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBall()
    }
    
}

