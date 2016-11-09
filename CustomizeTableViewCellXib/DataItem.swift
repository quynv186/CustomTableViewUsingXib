//
//  DataItem.swift
//  CustomizeTableViewCellXib
//
//  Created by QUYNV on 11/9/16.
//  Copyright © 2016 QUYNV. All rights reserved.
//

import UIKit

class DataItem {
    var footBallClub : String!
    var imgLogo : UIImage!
    var stadiumName : String!
    var imgStar : UIImage!
    
    init(footBall : String, imgLg : String, stdName : String, imgStar : Int) {
        self.footBallClub = footBall
        self.imgLogo = UIImage(named: "\(imgLg).jpg")
        self.stadiumName = stdName
        self.imgStar = UIImage(named: "\(imgStar)stars.png")
    }
}
