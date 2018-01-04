//
//  WLFileTool.swift
//  MakeLyrics
//
//  Created by huangrensheng on 2017/12/20.
//  Copyright © 2017年 huangrensheng. All rights reserved.
//

import UIKit

typealias WLMusicFileList = (Array<String>) -> Void;

class WLFileTool: NSObject {
    
    func getMusicList(path:String, fileBlock:WLMusicFileList) -> Void {
        let fileManage = FileManager();
        var fileArray = Array<String>();
        var songNameArray = Array<String>();
        do {
            try fileArray = fileManage.contentsOfDirectory(atPath:path);
        } catch let error {
            print(error)
        }
        
        for fileName in fileArray {
            if (fileName.hasSuffix("mp3")){
                print(fileName);
                songNameArray.append(fileName);
            }
        }
        
        fileBlock(songNameArray);
    }
    
}
