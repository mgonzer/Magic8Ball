//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Matthew Gonzer on 10/19/17.
//  Copyright © 2017 Matthew Gonzer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0

    @IBOutlet weak var updateViewImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton(_ sender: UIButton) {
        updateBallView()
    }
    
    func updateBallView(){
        randomBallNumber = Int(arc4random_uniform(5))
        updateViewImage.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallView()
    }
    
}

