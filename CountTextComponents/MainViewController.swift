//
//  ViewController.swift
//  CountTextComponents
//
//  Created by Vasichko Anna on 14.04.2022.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var textOptionsLabel: UILabel! {
        didSet {
            textOptionsLabel.text = text.textOptions
        }
    }
    
    @IBOutlet weak var mainTextView: UITextView! {
        didSet {
            text.text = mainTextView.text ?? ""
        }
    }

    private var text = Text()
    
    @IBAction func countButtonPressed() {
        text = Text(text: mainTextView.text ?? "")
        textOptionsLabel.text = text.textOptions
    }
    
    @IBAction func cleanButtonPressed() {
        mainTextView.text = ""
    }
}

