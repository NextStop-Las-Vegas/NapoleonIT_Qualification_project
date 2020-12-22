//
//  BookingTableViewCell.swift
//  Qualification_project
//
//  Created by Pavel on 22.12.2020.
//

import UIKit

class BookingTableViewCell: UITableViewCell {

    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var viewBottomLayer: UIView!
    @IBOutlet weak var location: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(){
        viewBottomLayer.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }
}
