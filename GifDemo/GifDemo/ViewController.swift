//
//  ViewController.swift
//  GifDemo
//
//  Created by zhanggui on 2017/8/23.
//  Copyright © 2017年 zhanggui. All rights reserved.
//

import UIKit
import ImageIO
import MobileCoreServices
class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewGif()
    }
    func imageViewGif() {
        var images:[UIImage] = []
        for i in 0...66 {
            let imagePath = "\(i).png"
            let image:UIImage = UIImage.init(named: imagePath)!
            images.append(image)
        }
        imageView.contentMode = UIViewContentMode.center
        imageView.animationImages = images
        imageView.animationDuration = 5
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
    //gif生成
    func gifCombine() {
        let images:NSMutableArray = NSMutableArray.init()
        for i in 0...66 {
            let imagePath = "\(i).png"
            let image:UIImage = UIImage.init(named: imagePath)!
            images.add(image)
        }
        var docs = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = docs[0] as String
        
        
        let gifPath = documentsDirectory + "/plane.gif"
        let url = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, gifPath as CFString!, CFURLPathStyle.cfurlWindowsPathStyle, false)
        let destion = CGImageDestinationCreateWithURL(url!, kUTTypeGIF, images.count, nil)
        //设置每帧之间播放时间
        let cgimagePropertiesDic = [kCGImagePropertyGIFDelayTime as String:0.1]
        
        let cgImagePropertiesDestDic = [kCGImagePropertyGIFDictionary as String: cgimagePropertiesDic]
        ///依次为gif图像对象添加每一帧元素
        for cgimage in images {
            CGImageDestinationAddImage(destion!, (cgimage as AnyObject).cgImage!!, cgImagePropertiesDestDic as CFDictionary)
        }
        let gifPropertiesDic:NSMutableDictionary = NSMutableDictionary()
        //设置色彩空间
        gifPropertiesDic.setValue(kCGImagePropertyColorModelRGB, forKey: kCGImagePropertyColorModel as String)
        //设置图像的颜色深度
        gifPropertiesDic.setValue(16, forKey: kCGImagePropertyDepth as String)

        //设置gif执行次数
        gifPropertiesDic.setValue(1, forKey: kCGImagePropertyGIFLoopCount as String)
        
        let gifDictionaryDestDic = [kCGImagePropertyGIFDictionary as String:gifPropertiesDic]
        //为gif图像设置属性
        CGImageDestinationSetProperties(destion!, gifDictionaryDestDic as CFDictionary?)
        
        CGImageDestinationFinalize(destion!)
        print(gifPath)
        
        
    }
    /// gif分割
    func gifSeprate() {
        let gifPath = Bundle.main.path(forResource: "plane", ofType: "gif")
        
        do {
            let gifData =  try Data.init(contentsOf: URL.init(fileURLWithPath: gifPath!))
            let gifDataSource: CGImageSource = CGImageSourceCreateWithData(gifData as CFData, nil)!
            let gifImageCount: Int = CGImageSourceGetCount(gifDataSource)
            for i in 0 ... gifImageCount-1 {
                let imageref: CGImage = CGImageSourceCreateImageAtIndex(gifDataSource, i, nil)!
                let image: UIImage  = UIImage.init(cgImage: imageref, scale: UIScreen.main.scale, orientation: UIImageOrientation.down)
                let imageData = UIImagePNGRepresentation(image)
                var docs = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                let documentsDirectory = docs[0] as String
                let imagePath = documentsDirectory + "/\(i)" + ".png"
                try? imageData?.write(to: URL.init(fileURLWithPath: imagePath), options: [.atomic])
                print("\(imagePath)")
            }
        } catch  {
            print(error.localizedDescription)
        }
    }

}

