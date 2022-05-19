//
//  ViewController.swift
//  API_A00244514
//
//  Created by Giselle Salvador on 2022-05-18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
    }


    @IBAction func showDisneyData(_ sender: Any) {
        DisneyAPI_Helper.fetchData { printString in
           print(printString)
    }
    }
    
    
    @IBAction func showPotterData(_ sender: Any) {
        PotterAPI_Helper.fetchData { printString in
           print(printString)
    }
    }
    
    
    @IBAction func showPokeData(_ sender: Any) {
       PokeAPI_Helper.fetchData { printString in
           print(printString)
    }
    }
    
}

    
