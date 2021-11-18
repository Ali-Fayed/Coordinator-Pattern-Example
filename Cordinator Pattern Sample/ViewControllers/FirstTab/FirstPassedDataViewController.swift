//
//  FirstPassedDataViewController.swift
//  Cordinator Pattern Sample
//
//  Created by Ali Fayed on 18/11/2021.
//

import UIKit

class FirstPassedDataViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var labelExample: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelExample
    }
}
