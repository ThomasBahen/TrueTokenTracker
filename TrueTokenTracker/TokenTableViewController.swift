//
//  TokenTableViewController.swift
//  TrueTokenTracker
//
//  Created by Jim Bahen on 2018-06-29.
//  Copyright © 2018 Thomas Bahen. All rights reserved.
//

import UIKit

class TokenTableViewController: UITableViewController {
    // TESTING VARIABLES
    let lizardSoldier = TokenStack(name: "Lizard Soldier", power: 2 , toughness: 2 )
    let humanCleric = TokenStack(name: "Human Cleric", power: 1 , toughness: 2 )
    
    lazy var totalTokens: [TokenStack] = [lizardSoldier]
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return totalTokens.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TokenCounter", for: indexPath)

        cell.textLabel?.text = totalTokens[indexPath.row].name
        cell.detailTextLabel?.text = String(totalTokens[indexPath.row].power) +  "/" + String(totalTokens[indexPath.row].toughness)
        

        return cell
    }
    
    @IBAction func addNewTokenStack(_ sender: UIBarButtonItem) {
        totalTokens += [humanCleric]
        tableView.reloadData()
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
