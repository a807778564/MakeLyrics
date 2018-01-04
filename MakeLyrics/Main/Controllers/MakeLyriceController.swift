//
//  MakeLyriceController.swift
//  MakeLyrics
//
//  Created by huangrensheng on 2017/12/20.
//  Copyright © 2017年 huangrensheng. All rights reserved.
//

import UIKit

class MakeLyriceController: MLBaseController,UITableViewDelegate,UITableViewDataSource {
    
    var lyricsTable = UITableView(frame: CGRect.zero, style: UITableViewStyle.grouped);
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        setBackArrow(imageName: "wl_nav_back_arrow", position: MLNavItem.Left);
        
        lyricsTable.snp.makeConstraints { (make) in
            
        }
        
        // Do any additional setup after loading thie view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell();
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
