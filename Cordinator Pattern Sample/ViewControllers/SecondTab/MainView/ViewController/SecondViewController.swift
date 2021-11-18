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
    let viewModel = SecondViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        viewModel.router?.trigger(.navigateView(passedText: viewModel.exampleText, backgroundColor: .orange))
    }
}
