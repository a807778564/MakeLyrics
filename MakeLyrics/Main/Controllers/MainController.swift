//
//  MainController.swift
//  MakeLyrics
//
//  Created by huangrensheng on 2017/12/20.
//  Copyright © 2017年 huangrensheng. All rights reserved.
//

import UIKit

class MainController: MLBaseController,UITableViewDelegate,UITableViewDataSource {
    
    var songArray = Array<String>();
    @IBOutlet weak var songTable: UITableView! ;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.songTable.tableFooterView = UIView();
        
        let fileTool = WLFileTool();
        fileTool.getMusicList(path: documentPath) { (songNameArray) in
            songArray = songNameArray;
        }
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.songArray.count;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MLMainSongListCell = tableView.dequeueReusableCell(withIdentifier: "MLMainSongListCell") as! MLMainSongListCell ;
        cell.songName.text = self.songArray[indexPath.row];
        return cell;
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func openMake(_ sender: UIButton) {
        let make = MakeLyriceController();
        self.navigationController?.pushViewController(make, animated: true);
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
