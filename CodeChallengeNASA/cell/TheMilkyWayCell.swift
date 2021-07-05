//
//  TheMilkyWayCell.swift
//  CodeChallengeNASA
//
//  Created by Imtiaz on 6/7/21.
//

import UIKit

class TheMilkyWayCell : UITableViewCell{
    
    static let identifier = "TheMilkyWayCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(cardView)
        cardView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(8)
            make.bottom.equalToSuperview().inset(8)
            make.height.equalTo(70)
            make.edges.equalToSuperview()
        }
        
        cardView.addSubview(iconView)
        iconView.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(20)
            make.top.equalToSuperview().inset(10)
            make.height.width.equalTo(40)
        }
        
        cardView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(iconView.snp.top)
            make.left.equalTo(iconView.snp.right).offset(16)
        }
        
        cardView.addSubview(placeLabel)
        placeLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(4)
            make.left.equalTo(iconView.snp.right).offset(16)
        }
        
        cardView.addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(4)
            make.left.equalTo(placeLabel.snp.right).offset(16)        }
   
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
//    func configure(with item: Model) {
//        nameLabel.text = item.title
//        iconView.image = UIImage(named: item.photographer)
//    }
//
    
    
    private let nameLabel: UILabel = {
        let l = UILabel()
       // l.font = CenturyGothic.regular.of(size: GMFConst.fontSize14)
        l.textAlignment = .left
        l.numberOfLines = 1
        l.textColor = .black
        l.text = "So this Milky way list"
        l.numberOfLines = 2
        return l
    }()
    
    private let placeLabel: UILabel = {
        let l = UILabel()
       // l.font = CenturyGothic.regular.of(size: GMFConst.fontSize14)
        l.textAlignment = .left
        l.numberOfLines = 1
        l.textColor = .black
        l.text = "Tom Tower"
        return l
    }()
    
    private let dateLabel: UILabel = {
        let l = UILabel()
       // l.font = CenturyGothic.regular.of(size: GMFConst.fontSize14)
        l.textAlignment = .left
        l.numberOfLines = 1
        l.textColor = .black
        l.text = "20 Mar, 2002"
        return l
    }()
    
    private var iconView: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView = UIImageView.init(image: UIImage.init(named: "imtiaz_01_test"))
        return imageView
    }()
    
    private let cardView: GradientCard = {
        let cardView = GradientCard()
        cardView.cornerRadius = 10
        cardView.shadowColor = UIColor(red: 0.87, green: 0.87, blue: 0.87, alpha: 1.00)
        cardView.shadowOffset = CGSize(width: 0, height: 2)
        cardView.shadowRadius = 2
        cardView.shadowOpacity = 0.2
        return cardView
    }()

}


