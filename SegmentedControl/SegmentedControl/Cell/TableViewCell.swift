//
//  TableViewCell.swift
//  SegmentedControl
//
//  Created by Boss on 10/15/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func customInit(text: String, data: String){
        self.titleLable.text = text
        self.dataLabel.text = data
        
        self.titleLable.textColor = UIColor.red
        self.contentView.backgroundColor = UIColor.green
    }
    
}
