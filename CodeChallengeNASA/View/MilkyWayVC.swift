//
//  MilkyWayVC.swift
//  CodeChallengeNASA
//
//  Created by Imtiaz on 5/7/21.
//

import UIKit
import SnapKit

class MilkyWayVC: BaseVC {

        
    fileprivate let screenTitleLabel: UILabel = {
        let l = UILabel()
      //  l.font = Poppings.light.of(size: SmmartConst.fontSize24)
        l.text = "The Milky Way"
        l.textAlignment = .center
        l.textColor = .black
        return l
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.estimatedRowHeight = 110
        tableView.rowHeight = UITableView.automaticDimension
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        container.addSubview(screenTitleLabel)
        screenTitleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(48)
            make.left.right.equalToSuperview().inset(16)
        }
        
        
        container.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TheMilkyWayCell.self, forCellReuseIdentifier: TheMilkyWayCell.identifier)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(screenTitleLabel.snp.bottom).offset(12)
            make.left.right.bottom.equalToSuperview()
        }
    }

}


extension MilkyWayVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return list.count
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TheMilkyWayCell.identifier) as! TheMilkyWayCell
//        cell.selectionStyle = .none
//        cell.configure(with: list[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // let notification = notifications[indexPath.row]
        // navigation
        }
}
