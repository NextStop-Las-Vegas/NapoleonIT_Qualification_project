//
//  AboutOfMaster.swift
//  Qualification_project
//
//  Created by Pavel on 22.12.2020.
//

import UIKit

class AboutOfMaster: UIViewController{
    
    @IBOutlet weak var photoProfile: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    
    override func awakeFromNib() {
        photoProfile.contentMode = .scaleAspectFill
        photoProfile.layer.cornerRadius = 40
        photoProfile.clipsToBounds = true
        
        super.awakeFromNib()
    }

}
