//
//  WelcomeVC.swift
//  app-swoosh
//
//  Created by Muhaimin on 29/5/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func OnGetStartedTapped(_ sender: Any) {
        performSegue(withIdentifier: "LeagueVCSegue", sender: self)
    }
    @IBAction func unWindFromLeagueVC(unWindSegue: UIStoryboardSegue) {
        
    }
}
