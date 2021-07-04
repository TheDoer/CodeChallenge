//
//  MilkyWayVC.swift
//  CodeChallengeNASA
//
//  Created by Imtiaz on 5/7/21.
//

import UIKit
import SnapKit

class MilkyWayVC: BaseVC {

        
    fileprivate let notificationLabel: UILabel = {
        let l = UILabel()
        l.font = Poppings.light.of(size: SmmartConst.fontSize24)
        l.text = "The Milky Way"
        l.textAlignment = .center
        l.textColor = .black
        return l
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        container.addSubview(notificationLabel)
        notificationLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(48)
            make.left.right.equalToSuperview().inset(16)
        }
        
     
        
    }
    
   
}
