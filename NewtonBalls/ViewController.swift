//
//  ViewController.swift
//  NewtonBalls
//
//  Created by 李 宇亮 on 16/7/22.
//  Copyright © 2016年 NightWatcher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var newtonBalls: NewtonsCradle!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //颜色球的个数
        let newtonBalls = NewtonsCradle(colors: [.redColor(), .orangeColor(), .yellowColor(), .purpleColor(), .cyanColor()])
        //球的大小
        newtonBalls.ballSize = CGSize(width: 60, height: 60)
        //球的间距
        newtonBalls.ballPadding = 0.0
        //球的弹力
        newtonBalls.itemBehavior.elasticity = 1.0
        //球的阻力
        newtonBalls.itemBehavior.resistance = 0.2
        //是否允许方块
        newtonBalls.useSquaresInsteadOfBalls = false
        //是否允许方块旋转
        newtonBalls.itemBehavior.allowsRotation = false
        newtonBalls.gravityBehavior.angle = CGFloat(M_PI_2)
        newtonBalls.gravityBehavior.magnitude = 1.0
        
        for attachmentBehavior in newtonBalls.attachmentBehaviors {
            attachmentBehavior.length = 150
        }
        
        view.addSubview(newtonBalls)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

