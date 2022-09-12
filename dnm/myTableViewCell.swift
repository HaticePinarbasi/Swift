//
//  myTableViewCell.swift
//  dnm
//
//  Created by hatice Pınarbaşı on 31.08.2022.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var firstLabel: UILabel!

    @IBOutlet weak var secndLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
