//
//  ViewController.swift
//  tictactoe01
//
//  Created by Ivan Paulovich on 2018-11-24.
//  Copyright © 2018 Ivan Paulovich. All rights reserved.
//

import UIKit

enum Mark : Int {
    case Circle
    case Cross
    
    mutating func next(){
        self = Mark(rawValue: rawValue + 1) ?? .Circle
    }
}

class ViewController: UIViewController {
    
    var move = Mark.Cross;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func markSpot(_ sender: UIButton) {
        if (sender.currentTitle ?? "").isEmpty
        {
            switch move {
            case .Circle:
                sender.setTitle("⭕️", for: [])
            case .Cross:
                sender.setTitle("❎", for: [])
            }
            
            move.next()
        }
        else
        {
            sender.setTitle("", for: [])
        }
    }
    
}

