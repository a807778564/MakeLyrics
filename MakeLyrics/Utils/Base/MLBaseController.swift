//
//  MLBaseController.swift
//  MakeLyrics
//
//  Created by huangrensheng on 2017/12/20.
//  Copyright © 2017年 huangrensheng. All rights reserved.
//

import UIKit

class MLBaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = TinColor;
        self.navigationController?.navigationBar.shadowImage = UIImage();//去掉导航栏下的线
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent;
        // Do any additional setup after loading the view.
    }
    
    func setBackArrow(imageName:String,position:MLNavItem) -> Void {
        let image = UIImage(named: imageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        if position == MLNavItem.Left {
            let backBtn = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.plain, target: self, action: #selector(doLeftAction(sender:)));
            self.navigationItem.leftBarButtonItem = backBtn;
        }else{
            let backBtn = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.plain, target: self, action: #selector(doRightAction(sender:)));
            self.navigationItem.rightBarButtonItem = backBtn;
        }
    }
    
    
    @objc func doLeftAction(sender:AnyObject) -> Void {
        self.navigationController?.popViewController(animated: true);
    }
    
    @objc func doRightAction(sender:AnyObject) -> Void {
        self.navigationController?.popViewController(animated: true);
    }
    
    
    func setRightButtonByName(_name:NSString,_color:UIColor){
        let rightItem = UIBarButtonItem(customView:getNavButton(_name: _name, _color: _color, _align: false));
        let space = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil);
        space.width = -5;
        self.navigationItem.rightBarButtonItems = [space,rightItem];
    }
    
    func getNavButton(_name:NSString,_color:UIColor,_align:Bool) -> UIView{
        let size = getNewTextSize(_text: _name, _font: 14, _width: 100);
        let btn = UIButton(type: UIButtonType.custom);
        btn.frame = CGRect(x: 0, y: 0, width: 80, height: 44);
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14);
        btn.setTitle(_name as String, for: UIControlState.normal);
        btn.setTitleColor(_color, for: UIControlState.normal);
        if (_align){
            btn.addTarget(self, action: #selector(doLeftAction(sender:)), for: UIControlEvents.touchUpInside);
        }else{
            btn.addTarget(self, action: #selector(doRightAction(sender:)), for: UIControlEvents.touchUpInside);
        }
        btn.titleEdgeInsets = UIEdgeInsetsMake(14, _align ? 0 :80-size.width, 14, _align ? 80-size.width : 0);
        return btn;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
