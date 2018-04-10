//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Vincent Ratford on 12/4/17.
//  Copyright © 2017 Vincent Ratford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallNumber : Int = 0
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
    
        newBallImage()
        
    }
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(4))
        
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
        
    }
}

