//
//  ViewController.swift
//  Eluxon
//
//  Created by Zack Saltzman on 3/6/18.
//  Copyright © 2018 Zack Saltzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var onOffLbl: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
            toggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
            onOffLbl.text = "🌚OFF🌚"
            onOffLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        } else {
            toggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            onOffLbl.text = "🌝ON🌝"
            onOffLbl.textColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
        }
    }
    
}

