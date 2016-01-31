//
//  SecondViewController.swift
//  task manage
//
//  Created by 迫 佑樹 on 2016/02/01.
//  Copyright © 2016年 迫 佑樹. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet var item: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        
        toDoList.append(item.text!)
        
        item.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShuldReturn(textField: UITextField!) -> Bool{
        item.resignFirstResponder()
        
        return true
    }


}

