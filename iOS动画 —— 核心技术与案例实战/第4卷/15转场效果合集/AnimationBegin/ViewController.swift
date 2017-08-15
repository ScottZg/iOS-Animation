//
//  ViewController.swift
//  AnimationBegin
//
//  Created by jones on 5/5/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView:UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView()
        imageView?.frame = CGRect(x: 0, y: 0, width: 300, height: 400)
        imageView?.center = self.view.center
        imageView?.image = UIImage(named: "1.jpg")
        imageView?.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(imageView!)
    }
    @IBAction func animationBegin(_ sender: AnyObject) {
        imageView?.image = UIImage(named: "2.jpg")
        let animation:CATransition = CATransition()
        animation.duration = 5;
//        animation.type = "oglFlip"
//        animation.type = "cube"
//        animation.type = "suckEffect"
//        animation.type = "rippleEffect"
//        animation.type = "pageUnCurl"
//        animation.type = "pageCurl"
//        animation.type = "cameraIrisHollowOpen"
//        animation.type = "cameraIrisHollowClose"
//        animation.type = kCATransitionFade
//        animation.type = kCATransitionPush
//        animation.type = kCATransitionReveal
        animation.type = kCATransitionMoveIn
//        animation.subtype = kCATransitionFromRight
        self.view.layer.add(animation, forKey: nil)
    }
    
    /*
     pageCurl            向上翻一页
     pageUnCurl          向下翻一页
     rippleEffect        滴水效果
     suckEffect          收缩效果，如一块布被抽走
     cube                立方体效果
     oglFlip             上下翻转效果
    
    NSString *imageName = [NSString stringWithFormat:@"%d.jpg",imageIndex];
    UIImage *image = [UIImage imageNamed:imageName];
    self.imageView.image = image;
    CATransition *animation = [CATransition animation];
    animation.duration = 2;
    //    animation.type = @"oglFlip";
    //    animation.type = @"cameraIrisHollowOpen";相机打开
    //    animation.type = @"cameraIrisHollowClose";相机关闭
    
    //    animation.type = kCATransitionFade;淡化效果
    //    animation.type = kCATransitionPush;
    //    animation.type = kCATransitionReveal;揭开效果：
    //    animation.type = kCATransitionMoveIn; 进入效果
    /*
     kCATransitionFromRight；
     kCATransitionFromLeft(默认值)
     kCATransitionFromTop；
     kCATransitionFromBottom*/
    //    animation.subtype = kCATransitionFromTop;
    */

}

