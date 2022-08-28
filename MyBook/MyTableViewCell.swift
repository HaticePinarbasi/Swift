//
//  MyTableViewCell.swift
//  MyBook
//
//  Created by hatice Pınarbaşı on 26.08.2022.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textLabel02: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 0))
   }

}
