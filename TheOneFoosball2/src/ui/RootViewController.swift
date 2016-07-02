//
//  RootViewController.swift
//  TheOneFoosball2
//
//  Created by 卢乐颜 on 16/7/2.
//  Copyright © 2016年 卢乐颜. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {
    override func viewDidLoad() {
        tabBar.tintColor = UIColor.redColor()

        //挑战
        let challengeVc = ChallengeController(style: .Grouped)
        addVc(challengeVc, title: "挑战", image: "home2", selectedImage: "home")

        //附近

        //创建

        //组队

        //个人
        let ownVc = OwnController()
        addVc(ownVc, title: "个人", image: "my2", selectedImage: "my")
        
    }

    func addVc(vc: UIViewController, title t: String, image img: String, selectedImage simg: String) {
        vc.tabBarItem.title = t

        // 设置子控制器的图片
        vc.tabBarItem.image = UIImage(named: img)
//        vc.tabBarItem.selectedImage = UIImage(named: simg)!.imageWithRenderingMode(.AlwaysOriginal)

        // 设置文字的样式
//        vc.tabBarItem.setTitleTextAttributes([
//                NSForegroundColorAttributeName: UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
//            ], forState: .Normal)
//        vc.tabBarItem.setTitleTextAttributes([
//                NSForegroundColorAttributeName: UIColor(red: 0.68, green: 0.4, blue: 0.08, alpha: 1.0)
//            ], forState: .Selected)

        // 先给外面传进来的小控制器 包装 一个导航控制器
        let nav = UINavigationController(rootViewController: vc)

        // 添加为子控制器
        addChildViewController(nav)

    }
}
