//
//  ViewController.swift
//  madLibs
//
//  Created by Ricardo Rojas on 11/7/17.
//  Copyright © 2017 Ricardo Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = "..."
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue){
        let controller = sender.source as! AddItemVCViewController
        
        let adj = controller.AdjectiveTextField.text!
        let verb1 = controller.VerboneTextField.text!
        let verb2 = controller.VerbtwoTextField.text!
        let noun = controller.NounTextField.text!
        let str = "We are having a perfectly \(adj) time now. Later we will \(verb1) and \(verb2) in the \(noun)"
        print (str)
        outputLabel.text = str
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}



