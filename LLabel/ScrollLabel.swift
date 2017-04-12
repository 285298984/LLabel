//
//  ClassfiyPackageItemView.swift
//  haoketang
//
//  Created by 落叶 on 2017/3/30.
//  Copyright © 2017年 admin. All rights reserved.
//
import UIKit



class ScrollLabel : UIScrollView{
    
    
    let lColor:UIColor = UIColor(red: 40/255, green: 177/255, blue: 229/255, alpha: 1)
    let hColor:UIColor = UIColor(red: 167/255, green: 171/255, blue: 171/255, alpha: 1)
    var mButton:UIButton? = nil
    
    
    // MARK: 定义数据的属性
    var list : [String]? {
        
        didSet {
            // 添加数据
            addItem(list: list!, mScorll: self)
            
        }
    }
    
    func addItem(list:[String],mScorll:UIScrollView){
        
        mScorll.alwaysBounceHorizontal = true
        mScorll.showsHorizontalScrollIndicator = false
        
        //设字的大小为17 内边距为5 外边距为5
        var i = 0
        var currentW = 0
        var oldw = 0
        
        
        for item in list { //大小分发
            
            let wF:Int = item.characters.count
            currentW = currentW + wF*17 + 30
            
            let frame:CGRect = CGRect(x:CGFloat(oldw),y:35, width:CGFloat(wF*17 + 30)-5,height:30)
            let button:UIButton = UIButton()
            
            button.frame = frame
            button.setTitle(item, for: .normal)
            
            button.layer.masksToBounds = true
            button.layer.cornerRadius = 14
            button.layer.borderWidth = 1
            
            if i==0 {
                mButton = button
                button.setTitleColor(lColor, for: .normal)
                button.layer.borderColor = lColor.cgColor
            }else{
                button.setTitleColor(hColor, for: .normal)
                button.layer.borderColor = hColor.cgColor
            }
            button.isUserInteractionEnabled = true
            button.addTarget(self, action:#selector(onClickListen),for: .touchUpInside)
            mScorll.addSubview(button)
            oldw = currentW
            i = i + 1
            
            
        }
        mScorll.contentSize=CGSize(width:CGFloat(currentW), height:CGFloat(35))
        
    }
    
    @objc func onClickListen(sender:UIButton){
        
        if mButton != nil {
            mButton?.setTitleColor(hColor, for: .normal)
            mButton?.layer.borderColor = hColor.cgColor
        }
        
        sender.setTitleColor(lColor, for: .normal)
        sender.layer.borderColor = lColor.cgColor
        
        mButton = sender
        print(sender.titleLabel!.text ?? "数据出错")
    }
    

}
