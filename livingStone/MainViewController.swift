//
//  MainViewController.swift
//  livingStone
//
//  Created by 김창현 on 2/1/19.
//  Copyright © 2019 Sandol. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var reminderCollectionView: UICollectionView!
    
    let sdNotice = [
        "2/3, 주일밤, 강진흥 집사님댁에서 저녁식사",
        "2/22, 금요일, 윤목사님댁에서 저녁식사",
        "12/24, 화요일, 크리스마스 이브"
    ]
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dateLabel.text = getDateOfToday()
    }

}

extension MainViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sdNotice.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.reminderCollectionView.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath) as! ReminderCollectionViewCell
        cell.displayContent(content: sdNotice[indexPath.row])
        
//        print("sdNotice[indexPath.row] : \(sdNotice[indexPath.row + 1])")
        
        return cell
    }
}
