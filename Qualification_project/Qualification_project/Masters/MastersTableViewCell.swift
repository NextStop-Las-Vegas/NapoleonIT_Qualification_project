//
//  MastersTableViewCell.swift
//  Qualification_project
//
//  Created by Pavel on 22.12.2020.
//

import UIKit

class MastersTableViewCell: UITableViewCell {
    @IBOutlet weak var masterPhotoProfile: UIImageView!
    @IBOutlet weak var masterInfoLabel: UILabel!
    @IBOutlet weak var masterName: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var viewBottomLayer: UIView!
    
    var delegate: ButtonDelegate?

    @IBAction func pushFullScreenButton(_ sender: Any) {
        self.delegate?.pushFullScreenButton(name: masterName.text ?? "", description: masterInfoLabel.text ?? "", image: masterPhotoProfile.image ?? UIImage())
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func setup(){
        viewBottomLayer.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }
}
