//
//  QuizViewController.swift
//  quiz
//
//  Created by Westfall, Dylan S (westf002) on 1/30/18.
//  Copyright © 2018 Westfall, Dylan S (westf002). All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    let questions = [
    "what's is 7+7",
    "what's blue plus yellow",
    "what's three feet"
    ]
    
    let answers = [
    "14",
    "green",
    "a yard"
    ]
    
    let choicesOne = [
    "10",
    "14",
    "12",
    "9"
    ]
    
    let choicesTwo = [
    "purple",
    "red",
    "green",
    "brown"
    ]
    
    let choicesThree = [
    "a cabbage",
    "a person",
    "a penguin",
    "a yard"
    ]
    
    let correctChoice = [
    2,3,4
    ]
    
    var currentSet = ["a","b","c","d"]
    var currentIndex = 0
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var yourquestion: UILabel!
    @IBOutlet weak var trueanswer: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceThree: UIButton!
    @IBOutlet weak var choiceFour: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = questions[0]
        yourquestion.text = "no answer"
        trueanswer.text = "???"
        currentSet = choicesOne
       setchoices()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setchoices(){
        if currentIndex == 0 {
            currentSet = choicesOne
        }else if currentIndex == 1{
            currentSet = choicesTwo
        }else {
            currentSet = choicesThree
        }
        
        choiceOne.setTitle(currentSet[0], for:UIControlState.normal)
        choiceTwo.setTitle(currentSet[1], for:UIControlState.normal)
        choiceThree.setTitle(currentSet[2], for:UIControlState.normal)
        choiceFour.setTitle(currentSet[3], for: UIControlState.normal)
    }

    @IBAction func nextQuestion(_ sender: Any) {
         currentIndex = currentIndex + 1
        if currentIndex == questions.count{
            currentIndex = 0
        }
        question.text = questions[currentIndex]
        trueanswer.text = "???"
        yourquestion.text = "no answer"
        setchoices()
        
    }
    
    @IBAction func choiceOneClick(_ sender: Any) {
        let num = 1
        if num == correctChoice[currentIndex]{
            trueanswer.text = "corrrect"
        }else{
            trueanswer.text = "incorrect"
        }
    }
    @IBAction func choiceTwoClick(_ sender: Any) {
        let num = 2
        if num == correctChoice[currentIndex]{
            trueanswer.text = "corrrect"
        }else{
            trueanswer.text = "incorrect"
        }
    }
  
    @IBAction func choiceThreeClick(_ sender: Any) {
        let num = 3
        if num == correctChoice[currentIndex]{
            trueanswer.text = "corrrect"
        }else{
            trueanswer.text = "incorrect"
        }
    }
    @IBAction func choiceFourClick(_ sender: Any) {
        let num = 4
        if num == correctChoice[currentIndex]{
            trueanswer.text = "corrrect"
        }else{
            trueanswer.text = "incorrect"
        }
    }
    @IBAction func showAnswer(_ sender: Any) {
        trueanswer.text = answers[currentIndex]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
