//
//  MasterTableVC.swift
//  CustomizeTableViewCellXib
//
//  Created by QUYNV on 11/9/16.
//  Copyright © 2016 QUYNV. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {
    
    var arrayData : [DataItem]!
    
    @IBOutlet weak var tblView: UITableView!
    var detaiVC : DetailVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let item1 : DataItem = DataItem.init(footBall: "Manchester United", imgLg: "MU.png", stdName: "Old Trafford", imgStar: 5)
        let item2 : DataItem = DataItem.init(footBall: "Chelsea", imgLg: "Chelsea.png", stdName: "Stamford Bridge", imgStar: 4)
        let item3 : DataItem = DataItem.init(footBall: "Arsenal", imgLg: "Arsenal.png", stdName: "Emirates", imgStar: 3)
        let item4 : DataItem = DataItem.init(footBall: "Manchester City", imgLg: "MC.png", stdName: "Etihad", imgStar: 2)
        let item5 : DataItem = DataItem.init(footBall: "Liverpool", imgLg: "Liverpool.png", stdName: "Anfield", imgStar: 1)
        
        arrayData = [item1, item2, item3, item4, item5]
        
        self.tblView.delegate = self
        self.tblView.dataSource = self

        let nib = UINib(nibName: "CustomCellMaster", bundle: nil)
        self.tblView.register(nib, forCellReuseIdentifier: "Cell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomCellMaster = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCellMaster
        
        let item = arrayData[indexPath.row]
        cell.lblStadium.text = item.stadiumName
        cell.imgLogo.image = item.imgLogo
        cell.lblFootBallClub.text = item.footBallClub
        cell.imgStarRating.image = item.imgStar

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (detaiVC == nil) {
            detaiVC = Bundle.main.loadNibNamed("DetailVC", owner: self, options: nil)?.first as! DetailVC
        }
        
        detaiVC.strTitle = arrayData[indexPath.row].stadiumName
        
        self.navigationController?.pushViewController(detaiVC, animated: true)
        
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
