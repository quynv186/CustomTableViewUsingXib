//
//  DetailVC.swift
//  CustomizeTableViewCellXib
//
//  Created by QUYNV on 11/10/16.
//  Copyright © 2016 QUYNV. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    var strTitle : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = strTitle
        imgView.image = UIImage(named: "\(strTitle!).jpg")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
