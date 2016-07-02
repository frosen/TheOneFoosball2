//
//  Director.swift
//  TheOneFoosball2
//
//  Created by 卢乐颜 on 16/7/2.
//  Copyright © 2016年 卢乐颜. All rights reserved.
//

import Foundation

class Director: NSObject {
    //单例
    static let shareInstance = Director()
    private override init() {
        print("初始化导演类")
    }

    
}
