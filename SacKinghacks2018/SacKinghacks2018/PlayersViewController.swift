//
//  TeamViewController.swift
//  SacKinghacks2018
//
//  Created by Jacob Morris on 11/17/18.
//  Copyright © 2018 David Lee. All rights reserved.
//
import UIKit
import Foundation

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let players = [["name": "Marvin Bagley lll", "number": "35"], ["name": "Nemanja Bjelica", "number": "88"]]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("the count ", players.count)
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //select particular account
        let player = players[indexPath.row]
        print("make tabs")
        let cell = (tableView.dequeueReusableCell(withIdentifier: "playerCell") as? PlayerCell) ?? UITableViewCell(style: .subtitle, reuseIdentifier: "playerCell") as! PlayerCell
        //populate cell with account info
        cell.name.text = player["name"]
        cell.number.text = player["number"]
        cell.position.text = player["position"]
        return cell
    }
    
    @IBOutlet weak var PlayersTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I be rolling in")
        PlayersTable.delegate = self
        PlayersTable.dataSource = self
        PlayersTable.reloadData()
    }
    
    
}
