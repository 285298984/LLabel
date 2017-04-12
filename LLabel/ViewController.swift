//
//  ViewController.swift
//  LLabel
//
//  Created by 落叶 on 2017/4/12.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var scrollLabel : ScrollLabel = {
        let gameView = ScrollLabel()
        gameView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 90)
        return gameView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let list:[String] = ["桐子","宇宙剑神","很帅","帅爆","装逼者","二刀流","封弊者","电脑高手","手砍阻击枪子弹","帅爆","装逼者","二刀流","封弊者","宇宙剑神","很帅","帅爆","装逼者","二刀流","封弊者"]
        view.addSubview(scrollLabel)
        scrollLabel.list = list
        
        
        SortLabel().addItem(list:list,mView:view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

