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
        }
    }
    
    // MARK: - Properties
    
    private var testString = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


extension ViewController: UITextViewDelegate {
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        debugPrint("entering data", text)
        
        let newRange = Range(range, in: testString)!
        
        testString = testString.replacingCharacters(in: newRange, with: text)

        debugPrint("testString", testString)
        
        return true
    }
    
    /*
     "entering data" "༼ つ ͡° ͜ʖ ͡° ༽つ"
     "testString" "༼ つ ͡° ͜ʖ ͡° ༽つ"
     "entering data" ""
     "testString" "༼ つ ͡° ͜ʖ ͡° ༽"
     "entering data" ""
     "testString" "༼ つ ͡° ͜ʖ ͡° "
     "entering data" ""
     "testString" "༼ つ ͡° ͜ʖ ͡°"
     "entering data" ""
     "testString" "༼ つ ͡° ͜ʖ ͡"
     "entering data" "" and I get app crash
    */
    
}

