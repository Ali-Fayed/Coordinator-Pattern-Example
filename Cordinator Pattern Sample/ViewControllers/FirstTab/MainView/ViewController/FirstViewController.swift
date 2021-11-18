//
//  FirstViewController.swift
//  Cordinator Pattern Sample
//
//  Created by Ali Fayed on 18/11/2021.
//

import UIKit
import XCoordinator

class FirstViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    let viewModel = FirstViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        viewModel.router?.trigger(.navigateView(passedText: viewModel.exampleText , backgroundColor: .red))
    }
}
