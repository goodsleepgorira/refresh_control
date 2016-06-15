//
//  TestTableViewController.swift
//

import UIKit

class TestTableViewController: UITableViewController {

    //表示データ
    var dataList = ["佐藤","鈴木", "高橋","田中","渡辺","伊藤","山本","中村","小林","加藤","吉田","山田","佐々木","山口","松本","井上","斎藤","木村","林","清水","山崎","池田","阿部","森","橋本","山下","石川","中島"]

    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    //データを返すメソッド
    override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TestCell", forIndexPath:indexPath) as UITableViewCell
        cell.textLabel?.text = dataList[indexPath.row]
        return cell
    }
        
    //データの個数を返すメソッド
    override func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return dataList.count
    }
        
  }
