//
//  CornerRadius.swift
//  livingStone
//
//  Created by 김창현 on 2/4/19.
//  Copyright © 2019 Sandol. All rights reserved.
//

import UIKit

func viewCornerRadius(target: UIView, degree: CGFloat) {
    target.layer.cornerRadius = target.bounds.height / degree
}
