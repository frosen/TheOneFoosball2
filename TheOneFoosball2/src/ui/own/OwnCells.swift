//
//  OwnCells.swift
//  TheOneFoosball2
//
//  Created by 卢乐颜 on 16/7/3.
//  Copyright © 2016年 卢乐颜. All rights reserved.
//

import UIKit

class OwnTitleCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        let h = Int(OwnTitleCell.getCellHeight())
        contentView.bounds = CGRect(x: 0, y: 0, width: Int(contentView.frame.width), height: h)

        let bg = UIImageView(image: UIImage(named: "selfbg"))
        bg.frame = CGRect(x: 0, y: 0, width: Int(contentView.frame.width), height: h)
        contentView.addSubview(bg)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    class func getCellHeight() -> CGFloat {
        return 140
    }
}

class OwnQRCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        let bg = UIImageView(image: UIImage(named: ""))
        self.contentView.addSubview(bg)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    class func getCellHeight() -> CGFloat {
        return 80
    }
}

class OwnNormalCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        textLabel?.font = UIFont.systemFontOfSize(13)
        detailTextLabel?.font = UIFont.systemFontOfSize(13)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    class func getCellHeight() -> CGFloat {
        return 44
    }
}
