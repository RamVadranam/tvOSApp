//
//  ViewController.swift
//  tvOSApp
//
//  Created by sriram srinivasan on 09/02/2016.
//  Copyright © 2016 vadranam. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Item \(indexPath.row + 1)"
        cell.detailTextLabel?.text = "Subtitle \(indexPath.row + 1)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        print("\(indexPath.row) selected")
    }
    
    override var preferredFocusedView:UIView? {
        
        return self.view.subviews[0]
    }
    
    func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        
        if indexPath.row == 1 {
            
            return false
        }
        
        
        return true
        
        
    }


}

