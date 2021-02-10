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
        // Initialization code
    }
    
    func configureItemImage(withImage image: UIImage, andDescription description: String) {
        itemImage.image = image
        descriptionLabel.text = description
    }

}
