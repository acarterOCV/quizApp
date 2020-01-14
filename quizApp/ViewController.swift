//
//  ViewController.swift
//  quizApp
//
//  Created by Ashley Carter on 10/30/19.
//  Copyright © 2019 OCV, LLC. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    // This label will tell us if we chose the correct or incorrect answer.
    @IBOutlet weak var answerKeyLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        makeConstraints()
        checkAnswer1()
        question1()
        question2()
        
    }
    
    func makeConstraints() {
        answerKeyLabel.text = nil
        answerKeyLabel.textColor = .red
        answerKeyLabel.font = UIFont.boldSystemFont(ofSize: 40)
        checkAnswer1()

        questionLabel.font = UIFont.boldSystemFont(ofSize: 25)
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = .center
        questionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(100)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.centerX.equalToSuperview()
        }
        
        trueButton.titleLabel?.text = "True"
        trueButton.backgroundColor = .green
        trueButton.tintColor = .white
        trueButton.layer.cornerRadius = 14.0
        
        falseButton.titleLabel?.text = "False"
        falseButton.backgroundColor = .red
        falseButton.tintColor = .white
        falseButton.layer.cornerRadius = 12.0

        trueButton.snp.makeConstraints { (make) in
            make.top.equalTo(questionLabel.snp.bottom).offset(50)
            make.height.equalTo(60)
            make.width.equalTo(120)
            make.left.equalToSuperview().offset(40)
        }
        falseButton.snp.makeConstraints { (make) in
            make.top.equalTo(trueButton)
            make.height.width.equalTo(trueButton)
            make.right.equalToSuperview().offset(-40)
        }

        answerKeyLabel.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
        }
        
    }

    func checkAnswer1() {
        if trueButton.isTouchInside {
            answerKeyLabel.text = "Correct. WAR EAGLE!"
        } else if falseButton.isTouchInside {
            answerKeyLabel.text = "Incorrect... Auburn is the best."
        }
    }

    func question1() { // false
        questionLabel.text = "Everyone loves our current president, Trump!"

        if trueButton.isTouchInside {
            answerKeyLabel.text = "Incorrect."
        } else if falseButton.isTouchInside {
            answerKeyLabel.text = "Correct. You are one smart cookie"
        }
    }
    func question2() { // false
        questionLabel.text = "Aubie is the best mascot out there."

        if trueButton.isTouchInside {
            answerKeyLabel.text = "Incorrect"
        } else if falseButton.isTouchInside {
            answerKeyLabel.text = "Correct. You are a smarty pants!"
        }

    }


}

