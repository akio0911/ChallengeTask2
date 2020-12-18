//
//  ViewController.swift
//  segmentApp
//
//  Created by 酒井健太郎 on 2020/12/17.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var segmentControll: UISegmentedControl!
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // The default value is noSegment (no segment selected) until the user touches a segment.
        // Set this property to -1 to turn off the current selection.
        segmentControll.selectedSegmentIndex = -1
    }
    
    @IBAction func segmentButtonPressed(_ sender: UISegmentedControl) {
        let num1 = Double(textField1.text ?? "") ?? 0
        let num2 = Double(textField2.text ?? "") ?? 0
        
        switch segmentControll.selectedSegmentIndex {
        case 0:
            label.text = String(num1 + num2)
            break;
        case 1:
            label.text = String(num1 - num2)
            break;
        case 2:
            label.text = String(num1 * num2)
            break;
        case 3:
            if (num1 / num2).isInfinite {
                label.text = "0で割ることはできません"
            } else {
                label.text = String(num1 / num2)
            }
            break;
        default:
            label.text = "NONE"
            break;
        }
    }
}

