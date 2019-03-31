//
//  ViewController.swift
//  SimpleQuizApp
//
//  Created by LIZANDRA ALMEIDA on 26/3/19.
//  Copyright © 2019 LIZANDRA ALMEIDA. All rights reserved.
// Code Reference: https://www.youtube.com/watch?v=KNAQ3Y8PGkM
//

import UIKit

class ViewController: UIViewController {
    let questions = ["What is the capital of Chile?" , "Which is the largest ocean on earth?", "Where is the Acropolis located?", "What is the currency of Japan?", "What is the capital of Jordan?"]
    let answers = [["Santiago", "Brasilia", "Lima"],["Pacific","Antarctic","Indian"],["Greece", "Italy", "France"],["Yen", "Won", "Yuan"], ["Amman", "Petra", "Jordan City"]]
    
    //Variables
    var currentQuestion = 0
    var rightAnswerPlacement:UInt32 = 0
    var points = 0
    //Label
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var button: UIButton! 
    
 
    // Button
   
    @IBAction func action(_ sender: AnyObject) {
        
        if (sender.tag == Int(rightAnswerPlacement))
        {
            print("Right!")
            points += 1
            print(points)
            
        }
        else
        {
            print ("Wrong!")
             print(points)
        }
        
        if (currentQuestion != questions.count)
        {
            newQuestion()
        }
        else
        {
            performSegue(withIdentifier: "showScore", sender: self)
            
         
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showScore"
        {
            if let secondVC = segue.destination as? TwoViewController
            {
                var a = "Congrats, you've got "
                var b = String(points)
                var c = " points!"
                var d = "\(a) \(b) \(c)"
                
                secondVC.score = d
            }
            
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
     newQuestion()
    }
    
    //function displays new question
    func newQuestion()
    {
        lbl.text = questions[currentQuestion]
        rightAnswerPlacement = arc4random_uniform(3)+1
        
        // Create a button
        var button:UIButton = UIButton()
        var x = 1
        for i in 1...3
        {
            
            // Create a button
            button = view.viewWithTag(i) as! UIButton
            
            if ( i == Int(rightAnswerPlacement))
            {
                button.setTitle(answers[currentQuestion][0], for: .normal)
                
            }
            else
            {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x=2
            }
            
        }
        currentQuestion += 1
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
               // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

