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

    @IBAction func getOrderButton(_ sender: Any) {
       
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(){
//        viewBottomLayer.backgroundColor = .white
        location.contentMode = .scaleAspectFill
        location.layer.cornerRadius = 10
        location.clipsToBounds = true
    }
}
