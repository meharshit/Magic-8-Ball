//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Harshit Satyaseel on 30/05/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomImageGenerator()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
       randomImageGenerator()
     
    }
    func randomImageGenerator() {
        randomBallNumber = Int(arc4random_uniform(4))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomImageGenerator()
    }
}

