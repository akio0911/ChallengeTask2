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
    }
    
    @IBAction func segmentButtonPressed(_ sender: UISegmentedControl) {
        switch segmentControll.selectedSegmentIndex {
        
        case 0:
            print("Tap 0")
            label.text = "0"
        default:
            print("NONE")
            label.text = "NONE"
        }
    }
}

