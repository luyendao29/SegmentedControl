//
//  ViewController.swift
//  SegmentedControl
//
//  Created by Boss on 10/15/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var data = [
        ["⚽️ Soccer",       "⛳️ Golf",      "🏀 Basketball",    "🏈 American Football",
         "⚾️ Baseball",     "🎾 Tennis",    "🏐 Valleyball",    "🏸 Badminton"],
        ["🍎 Apple",        "🍐 Pear",      "🍓 Strawberry",    "🥑 Avocado",
         "🍌 Banana",       "🍇 Grape",     "🍈 Melon",         "🍊 Orange",
         "🍑 Peach",        "🥝 Kiwi"]
    ]
    
    var p: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customcell()
    }
    func customcell(){
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
        p = 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[p!].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        let str = data[p!][indexPath.row].components(separatedBy: " ")
        cell?.customInit(text: str[1], data: str[0])
        return cell!
        
    }
    @IBAction func OnClickSegmentControl(_ sender: UISegmentedControl) {
        p = sender.selectedSegmentIndex
        tableView.reloadData()
    }
    

}

