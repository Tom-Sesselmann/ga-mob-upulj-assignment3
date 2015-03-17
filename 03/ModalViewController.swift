//
//  ModalViewController.swift
//  Lesson03
//
//  Created by Thomas Sesselmann on 13/03/2015.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    let dismissButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
    let myImage:UIImage! = UIImage(named:"pizza")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        if (myImage != nil){
            let myImageView = UIImageView(image: myImage)
            myImageView.frame = view.frame
            myImageView.frame = CGRectMake(100, 100, 200, 200)
            view.addSubview(myImageView)
        }else{
            println("image not found")
        }
        
        dismissButton.setTitle("Dismiss", forState: .Normal)
        
        dismissButton.frame = CGRectMake(100,350,200,50)
        dismissButton.addTarget(self, action: "dismissModal", forControlEvents: .TouchUpInside)
        view.addSubview(dismissButton)
        
    }
    
    func dismissModal(){
        dismissViewControllerAnimated(true, completion: nil)
    }
}
