//
//  ViewController.swift
//  TestTextView
//
//  Created by Alexander Khitev on 6/7/18.
//  Copyright © 2018 Alexander Khitev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var textView: UITextView! {
        didSet {
            textView.delegate = self
            textView.text = "( ͡° ͜ʖ ͡🇺🇸°)༼ つ ͡° ͜ʖ ͡🏎° ༽つ"
        }
    }
    
    // MARK: - Properties
    
    private var testString = ""
    
}


extension ViewController: UITextViewDelegate {
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        debugPrint("range", range, textView.text.count)
        guard let newRange = Range(range, in: textView.text) else {
            return false
        }
        testString = textView.text.replacingCharacters(in: newRange, with: text)
        return true
    }
    
}

