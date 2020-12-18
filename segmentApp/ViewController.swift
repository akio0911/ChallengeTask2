//
//  ViewController.swift
//  segmentApp
//
//  Created by 酒井健太郎 on 2020/12/17.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak private var segmentControll: UISegmentedControl!
    @IBOutlet weak private var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // The default value is noSegment (no segment selected) until the user touches a segment.
        // Set this property to -1 to turn off the current selection.
        segmentControll.selectedSegmentIndex = -1
    }
    
    @IBAction func segmentButtonPressed(_ sender: UISegmentedControl) {
        switch segmentControll.selectedSegmentIndex {
        case 0:
            print("Tap 0")
            let a = 1 + 1
            label.text = String(a)
        case 1:
            print("Tap 1")
            label.text = "1"
        case 2:
            print("Tap 2")
            label.text = "2"
        case 3:
            print("Tap 3")
            label.text = "3"
        default:
            print("NONE")
            label.text = "NONE"
        }
    }
}

