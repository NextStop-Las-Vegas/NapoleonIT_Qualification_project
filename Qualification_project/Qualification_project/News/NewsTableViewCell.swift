//
//  NewsTableViewCell.swift
//  Qualification_project
//
//  Created by Pavel on 22.12.2020.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var buttonText: UIButton!
    @IBOutlet weak var newsTextLabel: UILabel!
    @IBOutlet weak var newsHeaderLabel: UILabel!
    
    var delegate: ButtonDelegateTwo?
    @IBAction func thinkMoreButton(_ sender: Any) {
//        self.delegate?.thinkMoreButton()
        self.delegate?.thinkMoreButton(header: newsHeaderLabel.text ?? "", text: newsTextLabel.text ?? "" )
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
