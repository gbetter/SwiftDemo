//
//  ViewController.swift
//  SwiftLearn
//
//  Created by ZZY on 2017/5/8.
//  Copyright © 2017年 STL. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var values = ["Swift 概览","基础内容","基本运算符","字符串和字符","集合类型","控制流","函数","闭包","枚举"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let initIdentifier = "initIdentifier"
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: initIdentifier)
        cell.textLabel?.text = values[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let surveyConroller = STLSurveyViewController()
        
        self.navigationController?.pushViewController(surveyConroller, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
//    override var prefersStatusBarHidden: Bool {
//        return true
//    }
    
    

}

