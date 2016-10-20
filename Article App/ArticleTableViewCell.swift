//
//  ArticleTableViewCell.swift
//  Article App
//
//  Created by Kokpheng on 10/20/16.
//  Copyright © 2016 Kokpheng. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
