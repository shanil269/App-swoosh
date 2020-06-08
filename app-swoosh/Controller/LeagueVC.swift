//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Muhaimin on 29/5/20.
//  Copyright © 2020 Muhaimin. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var NextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func OnNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func unWindFromSkillVC(unWindSegue: UIStoryboardSegue) {
        
    }
    @IBAction func OnMenTapped(_ sender: Any) {
        selectLeague(leagueType: "men")
    }
    @IBAction func OnWomenTapped(_ sender: Any) {
        selectLeague(leagueType: "women")
    }
    
    @IBAction func OnCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        NextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
