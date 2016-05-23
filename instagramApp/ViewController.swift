//
//  ViewController.swift
//  instagramApp
//
//  Created by kentaro on 2016/05/23.
//  Copyright © 2016年 kentaro aoki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myScrollView: UIScrollView!
    
    
    let coverView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coverView.frame = CGRectMake(0, 0, myImageView.frame.width, myImageView.frame.height)
        
        myImageView.addSubview(coverView)
        
        myScrollView.contentSize = CGSizeMake(730, 130)
        setEffectGroup(CGFloat(10), action: #selector(ViewController.tappedOriginalBtn(_:)), color: UIColor.clearColor(), text: "Original")
        setEffectGroup(CGFloat(100), action: #selector(ViewController.tappedRedBtn(_:)), color: UIColor.redColor(), text: "Red")
        setEffectGroup(CGFloat(190), action: #selector(ViewController.tappedGreenBtn(_:)), color: UIColor.greenColor(), text: "Green")
        setEffectGroup(CGFloat(280), action: #selector(ViewController.tappedBlueBtn(_:)), color: UIColor.blueColor(), text: "Blue")
        setEffectGroup(CGFloat(370), action: #selector(ViewController.tappedYellowBtn(_:)), color: UIColor.yellowColor(), text: "Yellow")
        setEffectGroup(CGFloat(460), action: #selector(ViewController.tappedPurpleBtn(_:)), color: UIColor.purpleColor(), text: "Purple")
        setEffectGroup(CGFloat(550), action: #selector(ViewController.tappedCyanBtn(_:)), color: UIColor.cyanColor(), text: "Cyan")
        setEffectGroup(CGFloat(640), action: #selector(ViewController.tappedWhiteBtn(_:)), color: UIColor.whiteColor(), text: "White")
        
    }
    
    func makeButton(x: CGFloat, action: Selector) -> UIButton{
        let button = UIButton()
        button.frame = CGRectMake(x, 30, 80, 80)
        button.addTarget(self, action: action, forControlEvents:.TouchUpInside)
        button.setBackgroundImage(UIImage(named: "cat.png"), forState: UIControlState.Normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 3.0
        return button
    }
    
    func makeButtonCoverView(color: UIColor) -> UIView{
        let buttonCoverView = UIView()
        buttonCoverView.frame = CGRectMake(0, 0, 80, 80)
        buttonCoverView.backgroundColor = color
        buttonCoverView.alpha = 0.1
        buttonCoverView.userInteractionEnabled = false
        return buttonCoverView
    }
    
    func makeEffectLabel(x: CGFloat, text: String) -> UILabel{
        let effectLabel = UILabel()
        effectLabel.frame =  CGRectMake(x, 110, 80, 20)
        effectLabel.text = text
        effectLabel.font = UIFont(name: "Helvetica-Light",size: CGFloat(15))
        effectLabel.textAlignment = NSTextAlignment.Center
        effectLabel.textColor = UIColor.whiteColor()
        return effectLabel
    }
    
    func setEffectGroup(x: CGFloat, action: Selector, color: UIColor, text: String){
        let originalBtn = makeButton(x, action: action)
        myScrollView.addSubview(originalBtn)
        let originalBtnCoverView = makeButtonCoverView(color)
        originalBtn.addSubview(originalBtnCoverView)
        let originalLabel = makeEffectLabel(x, text: text)
        myScrollView.addSubview(originalLabel)
    }
    
    func tappedOriginalBtn(sender: UIButton){
        print("OriginalButtonがタップされた。")
    }
    
    func tappedRedBtn(sender: UIButton){
        print("RedButtonがタップされた。")
        coverView.backgroundColor = UIColor.redColor()
        coverView.alpha = 0.1
    }
    
    func tappedGreenBtn(sender: UIButton){
        print("GreenButtonがタップされた。")
        coverView.backgroundColor = UIColor.greenColor()
        coverView.alpha = 0.1

    }
    
    func tappedBlueBtn(sender: UIButton){
        print("BlueButtonがタップされた。")
        coverView.backgroundColor = UIColor.blueColor()
        coverView.alpha = 0.1

    }
    
    func tappedYellowBtn(sender: UIButton){
        print("YellowButtonがタップされた。")
        coverView.backgroundColor = UIColor.yellowColor()
        coverView.alpha = 0.1

    }
    
    func tappedPurpleBtn(sender: UIButton){
        print("PurpleButtonがタップされた。")
        coverView.backgroundColor = UIColor.purpleColor()
        coverView.alpha = 0.1

    }
    
    func tappedCyanBtn(sender: UIButton){
        print("CyanButtonがタップされた。")
        coverView.backgroundColor = UIColor.cyanColor()
        coverView.alpha = 0.1

    }
    
    func tappedWhiteBtn(sender: UIButton){
        print("WhiteButtonがタップされた。")
        coverView.backgroundColor = UIColor.whiteColor()
        coverView.alpha = 0.1

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

