//
//  ViewController.swift
//  GifDecode
//
//  Created by jones on 4/25/16.
//  Copyright © 2016 jones. All rights reserved.
//

import UIKit
import ImageIO
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let gifPath:NSString = Bundle.main.path(forResource: "plane", ofType: "gif")! as NSString
        let gifData:Data = try! Data(contentsOf: URL(fileURLWithPath: gifPath as String))
        let gifDataSource:CGImageSource = CGImageSourceCreateWithData(gifData as CFData, nil)!
        let gifImageCount:Int = CGImageSourceGetCount(gifDataSource)
        
        for i in 0...gifImageCount-1{
            let imageref:CGImage? = CGImageSourceCreateImageAtIndex(gifDataSource, i, nil)
            let image:UIImage = UIImage(cgImage: imageref!, scale:UIScreen.main.scale, orientation:UIImageOrientation.up )
            let imageData:Data = UIImagePNGRepresentation(image)!
            var docs=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
            let documentsDirectory = docs[0] as String
            let imagePath = documentsDirectory+"/\(i)"+".png"
            try? imageData .write(to: URL(fileURLWithPath: imagePath), options: [.atomic])
            print("\(imagePath)")
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

