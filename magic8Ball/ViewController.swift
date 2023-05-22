//
//  ViewController.swift
//  magic8Ball
//
//  Created by Kağan Değirmen on 21.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let ballImages = [
        UIImage(named: "ball1"),
        UIImage(named: "ball2"),
        UIImage(named: "ball3"),
        UIImage(named: "ball4"),
        UIImage(named: "ball5"),
    ]

    @IBAction func askButtonPressed(_ sender: UIButton) {
        imageView.image = ballImages.randomElement()!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder() // To get shake gesture
    }
    
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
 
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            imageView.image = ballImages.randomElement()!
        }
    }

}

