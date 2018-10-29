//
//  ParalaxCell.swift
//  accelerometron
//
//  Created by exxe on 29.10.18.
//  Copyright © 2018 exxe. All rights reserved.
//

import UIKit

class ParalaxCell: UITableViewCell {

//    @IBOutlet weak var imgView: UIImageView!
//    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // set up our parallax code later
        
    }

    func configureCell(withImage image: UIImage, andDescription desc: String) {
        imgView.image = image
        descriptionLbl.text = desc
    }
    
    func setupParallax() {
        
    }
    
}
