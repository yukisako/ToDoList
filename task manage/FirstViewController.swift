//
//  FirstViewController.swift
//  task manage
//
//  Created by 迫 佑樹 on 2016/02/01.
//  Copyright © 2016年 迫 佑樹. All rights reserved.
//

import UIKit

var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    
    
    
    @IBOutlet var toDoListTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
            
            toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    //テーブルのセル数を指定
        
        return toDoList.count
        
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
    }
    
    
    override func viewDidAppear(animated: Bool) {
    //画面が表示されるごとに呼ばれるメソッド
        toDoListTable.reloadData()
    }
    

    

    

}

