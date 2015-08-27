//
//  ViewController.swift
//  Quiz1
//
//  Created by Macbook Pro on 8/3/15.
//  Copyright (c) 2015 William Possidento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var QuestionLabel: UILabel!
    
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var Button4: UIButton!
    
    //@IBOutlet var LabelEnd: UILabel!
    
    @IBOutlet var Result: UILabel!

    @IBOutlet var Next: UIView!
    
    var CorrectAnswer = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Hide()
        Result.text = ""
        RandomQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func RandomQuestions() {
        var RandomNumber = arc4random() % 5
        RandomNumber += 1 // Don't like starting with zero
        
        switch(RandomNumber) {
            
        case 1:
            QuestionLabel.text = "What element is the lightest?"
            Button1.setTitle("Hydrogen", forState: UIControlState.Normal)
            Button2.setTitle("Helium", forState: UIControlState.Normal)
            Button3.setTitle("Lithium", forState: UIControlState.Normal)
            Button4.setTitle("Beryllium", forState: UIControlState.Normal)
            CorrectAnswer = "1"
            break
            
        case 2:
            QuestionLabel.text = "Which of the following is liquid at room temperature?"
            Button1.setTitle("Mercury", forState: UIControlState.Normal)
            Button2.setTitle("Helium", forState: UIControlState.Normal)
            Button3.setTitle("Silver", forState: UIControlState.Normal)
            Button4.setTitle("Neon", forState: UIControlState.Normal)
            CorrectAnswer = "1"
            break
            
        case 3:
            QuestionLabel.text = "What is the symbol for gold?"
            Button1.setTitle("Gd", forState: UIControlState.Normal)
            Button2.setTitle("Au", forState: UIControlState.Normal)
            Button3.setTitle("Ag", forState: UIControlState.Normal)
            Button4.setTitle("Hg", forState: UIControlState.Normal)
            CorrectAnswer = "2"
            break
            
        case 4:
            QuestionLabel.text = "Which of the following is an alkali metal?"
            Button1.setTitle("Silver", forState: UIControlState.Normal)
            Button2.setTitle("Copper", forState: UIControlState.Normal)
            Button3.setTitle("Lithium", forState: UIControlState.Normal)
            Button4.setTitle("Boron", forState: UIControlState.Normal)
            CorrectAnswer = "3"
            break
            
        case 5:
            QuestionLabel.text = "Which of the following is not a halogen?"
            Button1.setTitle("Fluorine", forState: UIControlState.Normal)
            Button2.setTitle("Chlorine", forState: UIControlState.Normal)
            Button3.setTitle("Bromine", forState: UIControlState.Normal)
            Button4.setTitle("Indium", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            break
            
        default:
            break
        }
        
    }
    

    func Hide() {
        // LabelEnd.hidden = true
        Next.hidden = true
    }
    
    
    func unHide() {
        // LabelEnd.hidden = false
        Next.hidden = false
    }
    
    
    @IBAction func Button1Action(sender: AnyObject) {
        unHide()
        if(CorrectAnswer) == "1" {
            Result.text = "Correct."
        } else {
            Result.text = "Wrong. Try again."
        }
    }
    
    @IBAction func Button2Action(sender: AnyObject) {
        unHide()
        if(CorrectAnswer) == "2" {
            Result.text = "Correct."
        } else {
            Result.text = "Wrong. Try again."
        }
    }
    
    @IBAction func Button3Action(sender: AnyObject) {
        unHide()
        if(CorrectAnswer) == "3" {
            Result.text = "Correct."
        } else {
            Result.text = "Wrong. Try again."
        }
    }
    
    @IBAction func Button4Action(sender: AnyObject) {
        unHide()
        if(CorrectAnswer) == "4" {
            Result.text = "Correct."
        } else {
            Result.text = "Wrong. Try again."
        }
    }
    
    @IBAction func Next(sender: AnyObject) {
        Result.text = ""
        RandomQuestions()
    }

}

