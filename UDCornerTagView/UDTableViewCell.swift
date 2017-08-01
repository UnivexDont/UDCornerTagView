//
//  UDTableViewCell.swift
//  UDCornerTagView
//
//  Created by JMan on 01/08/2017.
//  Copyright © 2017 UnivexDont. All rights reserved.
//

import UIKit

class UDTableViewCell: UITableViewCell {

    let leftCornerView = UDCornerTagView.init(maxX: 100, lableHeight: 30)
    let rightCornerView = UDCornerTagView.init(maxX: 100, lableHeight: 30 , style: .right)

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(leftCornerView)
        contentView.addSubview(rightCornerView)
        
        leftCornerView.text = "Left"
        rightCornerView.text = "Right"
        
        leftCornerView.textColor = .white
        rightCornerView.textColor = .white
        
        leftCornerView.backgroundColor = UIColor.magenta
        leftCornerView.lableBackgroudColor = UIColor.green
        
        rightCornerView.backgroundColor = UIColor.orange
        rightCornerView.lableBackgroudColor = UIColor.brown
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
