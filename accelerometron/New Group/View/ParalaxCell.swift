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
        setupParallax()
    }

    func configureCell(withImage image: UIImage, andDescription desc: String) {
        imgView.image = image
        descriptionLbl.text = desc
    }
    
    func setupParallax() {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion =
        UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        imgView.addMotionEffect(motionEffectGroup)
    }
    
}
