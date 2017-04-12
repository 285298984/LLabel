//
//  SortLabel.swift
//  test
//
//  Created by 落叶 on 2017/4/12.
//  Copyright © 2017年 admin. All rights reserved.
//
import UIKit

class SortLabel{
    
    func addItem(list:[String],mView:UIView){
        
        var color:[UIColor] = []
        color.append(UIColor(red: 234/255, green: 153/255, blue: 153/255, alpha: 1))
        color.append(UIColor(red: 248/255, green: 193/255, blue: 139/255, alpha: 1))
        color.append(UIColor(red: 236/255, green: 236/255, blue: 147/255, alpha: 1))
        color.append(UIColor(red: 181/255, green: 247/255, blue: 181/255, alpha: 1))
        color.append(UIColor(red: 153/255, green: 206/255, blue: 242/255, alpha: 1))
        color.append(UIColor(red: 180/255, green: 180/255, blue: 245/255, alpha: 1))
        color.append(UIColor(red: 235/255, green: 152/255, blue: 193/255, alpha: 1))
        color.append(UIColor(red: 244/255, green: 142/255, blue: 145/255, alpha: 1))
        
        
        //设字的大小为17 内边距为5 外边距为5
        var i = 0
        var w = 0
        var h = 0
        var oldw = 0
        for item in list{ //大小分发
            
            let wF:Int = item.characters.count
            
            w = w + wF*17 + 20
            
            if CGFloat(w) > UIScreen.main.bounds.width {//下一行
                h = h + 1
                w  = wF*17 + 20
                oldw = 0
            }
            
            
            let f:CGRect = CGRect(x:CGFloat(oldw), y:CGFloat(35*h)+150, width:CGFloat(wF*17 + 20)-5,height:30)
            let lb:UILabel = UILabel()
            
            lb.frame = f
            lb.text = item
            lb.textColor = UIColor.white
            lb.textAlignment=NSTextAlignment.center
            lb.backgroundColor=color[i%8]
            
            mView.addSubview(lb)
            
            oldw = w
            i = i + 1
            
        }
    }
}
