//
//  BaseVC.swift
//  CodeChallengeNASA
//
//  Created by Imtiaz on 5/7/21.
//

import UIKit

class BaseVC: UIViewController {
    let container = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        supportTools()
        setView()
    }
    
    func supportTools(){
        // hidden navigatoins bar
        self.navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
    }
    
    func setView()  {
        //set main contener
        view.addSubview(container)
        container.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
