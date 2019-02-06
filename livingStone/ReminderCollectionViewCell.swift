//
//  ReminderCollectionViewCell.swift
//  livingStone
//
//  Created by 김창현 on 2/4/19.
//  Copyright © 2019 Sandol. All rights reserved.
//

import UIKit

class ReminderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var hi: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func displayContent(content: String) {
        viewCornerRadius(target: self.hi, degree: 16.0)
        self.titleLabel.text = content
    }
    
}
