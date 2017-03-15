//
//  UglyCell.swift
//  marks-table-view
//
//  Created by Prajwal Reddy on 16/03/17.
//  Copyright © 2017 Prajwal Reddy. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        mainImg.layer.cornerRadius = 5.0
        mainImg.clipsToBounds = true
        }

    func configureCell(image:UIImage, text: String) {
        mainImg.image = image
        mainLbl.text = text
    }
}
