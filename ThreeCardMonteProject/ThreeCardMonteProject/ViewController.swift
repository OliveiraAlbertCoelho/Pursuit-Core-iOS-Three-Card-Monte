//
//  ViewController.swift
//  ThreeCardMonteProject
//
//  Created by albert coelho oliveira on 7/29/19.
//  Copyright © 2019 albert coelho oliveira. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var number = Int.random(in: 1...3)
    let kingImage = UIImage(named: "kingCard")
    let threeImage = UIImage(named: "threeCard")
    let backRed = UIImage(named: "cardBackRed")
    @IBOutlet weak var textOutput: UILabel!
    @IBOutlet weak var cardOneView: UIButton!
    @IBOutlet weak var cardTwoView: UIButton!
    @IBOutlet weak var cardThreeView: UIButton!
    func disable(){
        cardOneView.isEnabled = false
        cardTwoView.isEnabled = false
        cardThreeView.isEnabled = false
    }
    func checkResult() -> UIButton {
        if cardOneView.tag == number{
            return cardOneView
        }else if
            cardTwoView.tag == number{
               return cardTwoView
            }
            return cardThreeView
        }
    @IBAction func cardOneAction(_ sender: UIButton) {
        if sender.tag  == number{
    cardOneView.setBackgroundImage(kingImage, for: .normal)
            textOutput.text = "you won"
           disable()
        }else {
            textOutput.text = "you lost"
    cardOneView.setBackgroundImage(threeImage, for: .normal)
checkResult().setBackgroundImage(kingImage, for: .normal)
            disable()
        }
    }
    @IBAction func cardTwoAction(_ sender: UIButton) {
        let second = 2
        if second == number{
            cardTwoView.setBackgroundImage(kingImage, for: .normal)
            textOutput.text = "you won"
                disable()
        }else {
            textOutput.text = "you lost"
            cardTwoView.setBackgroundImage(threeImage, for: .normal)
            checkResult().setBackgroundImage(kingImage, for: .normal)
                 disable()
        }
        
    }

    @IBAction func cardThreeAction(_ sender: UIButton) {
        let third = 3
        if third == number{
            cardThreeView.setBackgroundImage(kingImage, for: .normal)
            textOutput.text = "you won"
                 disable()
        }else {
            textOutput.text = "you lost"
cardThreeView.setBackgroundImage(threeImage, for: .normal)
checkResult().setBackgroundImage(kingImage, for: .normal)
            disable()
        }
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        cardThreeView.setBackgroundImage(backRed, for: .normal)
        cardTwoView.setBackgroundImage(backRed, for: .normal)
        cardOneView.setBackgroundImage(backRed, for: .normal)
        cardOneView.isEnabled = true
        cardTwoView.isEnabled = true
        cardThreeView.isEnabled = true
        number = Int.random(in: 1...3)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


