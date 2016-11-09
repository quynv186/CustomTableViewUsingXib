//
//  CustomCellMaster.swift
//  CustomizeTableViewCellXib
//
//  Created by QUYNV on 11/9/16.
//  Copyright © 2016 QUYNV. All rights reserved.
//

import UIKit

class CustomCellMaster: UITableViewCell {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblFootBallClub: UILabel!
    @IBOutlet weak var lblStadium: UILabel!
    @IBOutlet weak var imgStarRating: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
