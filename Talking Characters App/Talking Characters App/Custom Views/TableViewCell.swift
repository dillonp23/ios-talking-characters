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
    
    
    var character: Model.Animation? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateViews() {
        guard let character = character else { return }
        characterImage.image = Model.shared.image(for: character)
    }

    
}

