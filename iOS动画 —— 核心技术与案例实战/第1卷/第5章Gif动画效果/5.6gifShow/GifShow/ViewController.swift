//
//  ViewController.swift
//  GifShow
//
//  Created by jones on 5/12/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var images:[UIImage] = []
        for i in 0...66{// 遍历本地67张图片
            let imagePath = "\(i).png" // 构建图片名称
            let image:UIImage = UIImage(named: imagePath)!//构建UIImage
            images.append(image)// 将图片添加到数组中
        }
        let imageView = UIImageView()
        imageView.frame = self.view.bounds
        imageView.contentMode = UIViewContentMode.center
        self.view.addSubview(imageView)
        
        imageView.animationImages = images
        imageView.animationDuration = 5
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}











