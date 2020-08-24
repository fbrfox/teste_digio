//
//  SpotLightCollectionViewCell.swift
//  DigioTest
//
//  Created by Pedro Henrique Borges De Paula Sebastiao (RESOURCE TECNOLOGIA E INFORMATICA LTDA – GEDES – SP) on 23/08/20.
//  Copyright © 2020 Digio Test. All rights reserved.
//

import UIKit
import moa

class SpotLightCollectionViewCell: UICollectionViewCell {
 
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    @IBOutlet weak var ivSpotlight: UIImageView!
    static let CellIdentifier = "SpotLightCollectionViewCellIdentifier"
    
    
    override func awakeFromNib() {
          super.awakeFromNib()
          
    }
    
    
    func displayCell(spotLight: Spotlight){
        
        ivSpotlight.moa.url = spotLight.bannerURL
        
    }
    
}
