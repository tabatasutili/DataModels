//
//  ViewController.swift
//  DataModels
//
//  Created by ssabrinasu on 04/14/2021.
//  Copyright (c) 2021 ssabrinasu. All rights reserved.
//

import UIKit
import DataModels
import API

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ii: CellsViewModel = CellsViewModel(icon: "aa", name: "aa", identifier: "aa", price: 111)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
