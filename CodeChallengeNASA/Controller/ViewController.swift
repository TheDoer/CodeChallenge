//
//  ViewController.swift
//  CodeChallengeNASA
//
//  Created by Adonis Rumbwere on 3/7/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var apiService = APIService()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiService.getImagesData { (result) in
            print(result)
        }
        
    }


}

