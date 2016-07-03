//
//  OwnController.swift
//  TheOneFoosball2
//
//  Created by 卢乐颜 on 16/7/2.
//  Copyright © 2016年 卢乐颜. All rights reserved.
//

import UIKit

struct NorCellData {
    let img: String
    let title: String
    let subTitle: String
    init(i: String, t: String, st: String) {
        img = i
        title = t
        subTitle = st
    }
}

class OwnController: BaseTableController {
    //
    let group = [
        //section
        [
            NorCellData(i: "", t: "", st: ""),
            NorCellData(i: "", t: "", st: ""),
        ],
        [
            NorCellData(i: "", t: "", st: ""),
        ],
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("个人页面")

        navigationController!.navigationBarHidden = true
        automaticallyAdjustsScrollViewInsets = false
    }

    //table view
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2 + group.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0 || section == 1) {
            return 1
        } else {
            return group[section - 2].count
        }

    }

    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section == 0) {
            return 0.1
        } else {
            return 10
        }
    }

    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (indexPath.section == 0) {
            return 70
        } else if (indexPath.section == 1) {
            return 80
        } else {
            return 44
        }
    }

    let ownNorCellId = "ONCId"
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if (indexPath.section == 0) {
            return nil
        } else if (indexPath.section == 1) {
            return nil
        } else {

            var cell = tableView.dequeueReusableCellWithIdentifier(ownNorCellId)
            if (cell == nil) {
                cell = UITableViewCell(style: .Value1, reuseIdentifier: ownNorCellId)

                let data: NorCellData = group[indexPath.section - 2][indexPath.row]
                cell!.imageView!.image = UIImage(named: data.img)
                cell!.textLabel!.text = data.title
                cell!.detailTextLabel!.text = data.subTitle
                cell!.accessoryType = .DisclosureIndicator
            }
            return cell!

        }
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    }
}

















