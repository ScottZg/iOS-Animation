//
//  ViewController.swift
//  AnimationBegin
//
//  Created by jones on 5/5/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        
        let emitterCell = CAEmitterCell()
        emitterCell.name = "fire"
        emitterCell.emissionLongitude  = CGFloat(M_PI)// emissionLongitude:x-y 平面的 发 射方向
        emitterCell.velocity			= -1// 粒子速度 负数表明向上燃烧
        emitterCell.velocityRange		= 50// 粒子速度范围
        emitterCell.emissionRange		= 1.1//周围发射角度
        emitterCell.yAcceleration		= -200// 粒子y方向的加速度分量
        emitterCell.scaleSpeed			= 0.3// 缩放比例 超大火苗
        emitterCell.color = UIColor(red: 0 ,green: 0.4 ,blue:0.2 ,alpha:0.1).cgColor
        emitterCell.contents = UIImage(named: "fire.png")!.cgImage
        
        let emitterLayer = CAEmitterLayer()
        emitterLayer.position = self.view.center// 粒子发射位置
        emitterLayer.emitterSize = CGSize(width: 50, height: 10)// 控制火苗大小
        emitterLayer.renderMode = kCAEmitterLayerAdditive
        emitterLayer.emitterMode = kCAEmitterLayerOutline// 控制发射源模式 即形状
        emitterLayer.emitterShape = kCAEmitterLayerLine
        emitterLayer.emitterCells = [emitterCell]

        self.view.layer.addSublayer(emitterLayer)
        
        emitterLayer.setValue(500, forKeyPath: "emitterCells.fire.birthRate")
        emitterLayer.setValue(1, forKeyPath: "emitterCells.fire.lifetime")


 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

