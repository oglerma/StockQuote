//
//  CustomStockTableViewCell.swift
//  StockQuote
//
//  Created by Ociel Lerma on 1/13/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import UIKit


class CustomStockTableVC: UITableViewCell{
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    //
    let stockImageView:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill // image will never be strecthed vertially or horizontally
        img.layer.cornerRadius = 35
        img.clipsToBounds = true
        return img
    }()
    
    let nameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor =  Colors.darkGrey
        return label
    }()
    

    //Container for namveLabel View
    let containerView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true // this will make sure its children do not go out of the boundary
        return view
    }()
    
    
    let stockPriceLabel: UITextView = {
        let stockLabel = UITextView()
        stockLabel.font = UIFont.boldSystemFont(ofSize: 20)
        stockLabel.textColor = Colors.black
        return stockLabel
        
    }()
    
    
    
    private func addViews(){
        self.contentView.addSubview(stockImageView)
        containerView.addSubview(nameLabel)
        self.contentView.addSubview(containerView)
        self.contentView.addSubview(stockPriceLabel)
        addConstraintsToViews()
    }
    
    private func addConstraintsToViews(){
        
        stockImageView.anchors(top: self.contentView.centerYAnchor, topPad: 0,
                               bottom: nil, bottomPad: 0,
                               left: self.contentView.leadingAnchor, leftPad: 10,
                               right: nil, rightPad: 0,
                               height: 70, width: 70)
        
        containerView.anchors(top: self.contentView.centerYAnchor, topPad: 0,
                               bottom: nil, bottomPad: 0,
                               left: self.contentView.leadingAnchor, leftPad: 10,
                               right: nil, rightPad: 0,
                               height: 70, width: 70)
        
        nameLabel.anchors(top: self.contentView.centerYAnchor, topPad: 0,
                               bottom: nil, bottomPad: 0,
                               left: self.contentView.leadingAnchor, leftPad: 10,
                               right: nil, rightPad: 0,
                               height: 70, width: 70)
        
        stockPriceLabel.anchors(top: self.contentView.centerYAnchor, topPad: 0,
                               bottom: nil, bottomPad: 0,
                               left: self.contentView.leadingAnchor, leftPad: 10,
                               right: nil, rightPad: 0,
                               height: 70, width: 70)
    }
    
}
