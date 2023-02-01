//
//  ViewController.swift
//  History
//
//  Created by user on 29.01.23.
//

import UIKit
var historyBrain = HistoryBrain()
var timer = Timer()
class ViewController: UIViewController {

    @IBOutlet var textLabel: UILabel!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var oneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     updateUI()
    }


    @IBAction func buttonPress(_ sender: UIButton) {
        historyBrain.nextHistory(userChoice: sender.currentTitle ?? "d")
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    @objc func updateUI (){
        textLabel.text = historyBrain.getHistorynumber()
        oneButton.setTitle(historyBrain.getHistory1(), for: .normal)
        secondButton.setTitle(historyBrain.getHistory2(), for: .normal)
    }
    
}






