//
//  SecondViewController.swift
//  Cordinator Pattern Sample
//
//  Created by Ali Fayed on 18/11/2021.
//

import UIKit
import XCoordinator

class SecondViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    var router: UnownedRouter<SecondTabRoute>?
    var exampleText = "Text2"
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        router?.trigger(.navigateView(passedText: exampleText, backgroundColor: .orange))
    }
}
