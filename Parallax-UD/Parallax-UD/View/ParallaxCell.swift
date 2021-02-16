//
//  ParallaxCell.swift
//  Parallax-UD
//
//  Created by Arghadeep  on 10/02/21.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupParallax()
    }
    
    func configureItemImage(withImage image: UIImage, andDescription description: String) {
        itemImage.image = image
        descriptionLabel.text = description
    }
    
    func setupParallax() {
        let min = CGFloat(-60)
        let max = CGFloat(60)
        
        // x -> horizontal axis
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.maximumRelativeValue = max
        xMotion.minimumRelativeValue = min
        
        // y -> horizontal axis
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.maximumRelativeValue = max
        yMotion.minimumRelativeValue = min
        
        let motionGroup = UIMotionEffectGroup()
        motionGroup.motionEffects = [xMotion, yMotion]
        
        itemImage.addMotionEffect(motionGroup)
        
    }

}
