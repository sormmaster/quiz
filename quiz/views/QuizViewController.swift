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
    "what's is 7+7?",
    "what's blue plus yellow?",
    "what's three feet?",
    "how many syllabals does dog have?",
    "What is the fox related to?",
    "How do you eat cereal?",
    "7 * 2 = ?",
    "Click on the Dog",
    "What is red?",
    "Which is the best tv show?"
    ]
    
    let answers = [
    "14",
    "green",
    "a yard",
    "1",
    "a cat",
    "cereal first",
    "14",
    "the Dog",
    "... why did you do this?",
    "This is very opinionated"
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
    
    let choicesFour = [
        "2",
        "4",
        "3",
        "1"
    ]
    
    let choicesFive = [
        "a cat",
        "a dog",
        "a fish",
        "a bird"
    ]
    
    let choicesSix = [
        "milk first",
        "with water",
        "dry",
        "cereal first"
    ]
    
    let choicesSeven = [
    "27",
    "7",
    "14",
    "100"
    ]
    
    let choicesEight = [
    "dog",
    "a dog",
    "a bigger dog",
    "the dog"
    ]
    
    let choicesNine = [
    "... why did you do this?",
    "red",
    "color",
    "colour"
    ]
    
    let choicesTen = [
    "This is very opinionated",
    "lost",
    "heroes",
    "grays anatomy"
    ]
    
    
    let correctChoice = [
    2,3,4,4,1,4,3,4,1,1
    ]
    
    var currentSet = ["a","b","c","d"]
    var currentIndex = 0
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var trueanswer: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceThree: UIButton!
    @IBOutlet weak var choiceFour: UIButton!
    @IBOutlet weak var randomClick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = questions[0]
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
        }else if currentIndex == 2{
            currentSet = choicesThree
        } else if currentIndex == 3{
            currentSet = choicesFour
        }else if currentIndex == 4{
            currentSet = choicesFive
        }else if currentIndex == 5{
            currentSet = choicesSix
        }else if currentIndex == 6{
            currentSet = choicesSeven
        }else if currentIndex == 7{
            currentSet = choicesEight
        }else if currentIndex == 8{
            currentSet = choicesNine
        }else{
            currentSet = choicesTen
        }
        
        choiceOne.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
        choiceTwo.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
        choiceThree.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
        choiceFour.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
        
        choiceOne.setTitle(currentSet[0], for:UIControlState.normal)
        choiceTwo.setTitle(currentSet[1], for:UIControlState.normal)
        choiceThree.setTitle(currentSet[2], for:UIControlState.normal)
        choiceFour.setTitle(currentSet[3], for: UIControlState.normal)
        trueanswer.textColor = UIColor.black
    }

    @IBAction func nextQuestion(_ sender: Any) {
        
         currentIndex = currentIndex + 1
        if currentIndex == questions.count{
            currentIndex = 0
        }
        question.text = questions[currentIndex]
        trueanswer.text = "???"
        setchoices()
        
    }
    
    @IBAction func choiceOneClick(_ sender: Any) {
        let num = 1
        choiceOne.setTitleColor(UIColor.lightGray, for: UIControlState.normal)
        
        if num == correctChoice[currentIndex]{
            trueanswer.text = "corrrect"
            trueanswer.textColor = UIColor.green
        }else{
            trueanswer.text = "incorrect"
            trueanswer.textColor = UIColor.red
        }
    }
    @IBAction func choiceTwoClick(_ sender: Any) {
        let num = 2
        choiceTwo.setTitleColor(UIColor.lightGray, for: UIControlState.normal)
        
        if num == correctChoice[currentIndex]{
            trueanswer.text = "corrrect"
            trueanswer.textColor = UIColor.green
        }else{
            trueanswer.text = "incorrect"
            trueanswer.textColor = UIColor.red
        }
    }
  
    @IBAction func choiceThreeClick(_ sender: Any) {
        let num = 3
        choiceThree.setTitleColor(UIColor.lightGray, for: UIControlState.normal)
        
        if num == correctChoice[currentIndex]{
            trueanswer.text = "corrrect"
            trueanswer.textColor = UIColor.green
        }else{
            trueanswer.text = "incorrect"
            trueanswer.textColor = UIColor.red
        }
    }
    @IBAction func choiceFourClick(_ sender: Any) {
        let num = 4
        choiceFour.setTitleColor(UIColor.lightGray, for: UIControlState.normal)
        
        if num == correctChoice[currentIndex]{
            trueanswer.text = "corrrect"
            trueanswer.textColor = UIColor.green
        }else{
            trueanswer.text = "incorrect"
            trueanswer.textColor = UIColor.red
        }
    }
    @IBAction func showAnswer(_ sender: Any) {
        trueanswer.text = answers[currentIndex]
    }
    
    @IBAction func RandomChoice(_ sender: Any) {
        var ranNum = arc4random_uniform(10)
        currentIndex = Int(ranNum)
        question.text = questions[currentIndex]
        trueanswer.text = "???"
        setchoices()
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
