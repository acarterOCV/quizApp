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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        makeConstraints()
        
    }
    
    func makeConstraints() {
        questionLabel.text = "Is Auburn the best college ever?"
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
        
    }


}

