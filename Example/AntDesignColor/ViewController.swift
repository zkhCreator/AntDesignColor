//
//  ViewController.swift
//  AntDesignColor
//
//  Created by zkh90644@gmail.com on 09/05/2020.
//  Copyright (c) 2020 zkh90644@gmail.com. All rights reserved.
//

import UIKit

struct ColorItem {
    let color:UIColor
    let colorValue:String
    
    let fontColor:UIColor
    
    init(color:UIColor, colorValue:String, fontColor:UIColor) {
        self.color = color
        self.colorValue = colorValue
        self.fontColor = fontColor
    }
}

struct ColorGroup {
    let title:String
    let desc:String
    
    let colors:[ColorItem]
    
    init(title: String, desc: String, colors:[ColorItem]) {
        self.title = title
        self.desc = desc
        self.colors = colors
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

