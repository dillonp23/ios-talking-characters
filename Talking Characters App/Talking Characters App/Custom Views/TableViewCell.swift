//
//  TableViewCell.swift
//  Talking Characters App
//
//  Created by Dillon P on 8/1/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var characterImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
