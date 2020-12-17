//
//  ViewController.swift
//  segmentApp
//
//  Created by 酒井健太郎 on 2020/12/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControll: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentButtonPressed(_ sender: UISegmentedControl) {
        
        segmentControll.actionForSegment(at: 1)
    }
}

