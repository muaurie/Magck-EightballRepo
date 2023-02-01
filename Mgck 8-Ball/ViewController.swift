//
//  ViewController.swift
//  Mgck 8-Ball
//
//  Created by Cherish Spikes on 1/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Mark: - Properties
    
    let answers = ["Yes, definitely.", "Without a doubt.", "Yes, queen!","Yaaaaasssss!", "You straight.", "Sure, why not?", "Same.", "Tell me more!", "I'm confused..", "Ask again later.", "Girl please..", "TMI.", "That's cap.", "Hell no!", "Stop playin'."]
    
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    override func motionEnded(_ motion: UIEvent.EVentSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
   
        generateAnswer()
    }
    
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<14)	
        
        answerLabel.text = answers[randomIndex]
    }
}

