//
//  GetDate.swift
//  livingStone
//
//  Created by 김창현 on 2/1/19.
//  Copyright © 2019 Sandol. All rights reserved.
//

import UIKit

func getDateOfToday() -> String {
    let today = NSDate()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE, MMMM d, yyyy"
    let dateString = dateFormatter.string(from: today as Date)
    
    return dateString
}
