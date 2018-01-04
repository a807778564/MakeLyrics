//
//  MLPublicDefine.swift
//  MakeLyrics
//
//  Created by huangrensheng on 2017/12/20.
//  Copyright © 2017年 huangrensheng. All rights reserved.
//

import UIKit

let ScreenWidth = UIScreen.main.bounds.width;//屏幕宽
let ScreenHeight = UIScreen.main.bounds.height;//屏幕高
let StatusBarHeight = UIApplication.shared.statusBarFrame.size.height;//状态栏高度
let NavgationBarHeight:CGFloat = 44.0;//导航栏高度
let TopHeight = StatusBarHeight + NavgationBarHeight;
let documentPath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0];

let TinColor = RGBA(red:78,green:206,blue:129,alpha:1);//主要色

/// RGB颜色
/// - Parameters:
///   - red: 红
///   - green: 绿
///   - blue: 蓝
///   - alpha: 透明色
/// - Returns: 返回颜色值
func RGBA(red:CGFloat,green:CGFloat,blue:CGFloat,alpha:CGFloat) -> UIColor {
    return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha);
}

///   获取文本高度
/// - Parameters:
///   - _text: 文本
///   - _font: 字体大小
///   - _width: 文本宽度
/// - Returns: 返回文本宽高
func getNewTextSize(_text:NSString,_font:CGFloat,_width:Int) -> CGSize{
    let paragraph = NSMutableParagraphStyle();
    paragraph.alignment = NSTextAlignment.center;
    var font = UIFont.systemFont(ofSize: _font);
    if (_font == 22){
        font = UIFont.init(name: "HelveticaNeue-Bold", size: 22)!;
    }
    let attribute = NSDictionary(objects: [font,paragraph], forKeys: [NSAttributedStringKey.font as NSCopying,NSAttributedStringKey.paragraphStyle as NSCopying]);
    return _text.boundingRect(with: CGSize(width:_width,height:10000), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: attribute as? [NSAttributedStringKey : Any], context: nil).size;
}


//定义枚举 start
/** 导航栏按钮的位置
* - Left: 导航栏左侧
* - Right: 导航栏右侧
***/
enum MLNavItem:Int {
    case Left = 1001
    case Right = 1002
}
//定义枚举 end
