//
//  ViewController.swift
//  HitList
//
//  Created by Atsushi Kasuya on 1/27/19.
//  Copyright © 2019 Atsushi Kasuya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var names: [String] = []
    
    @IBAction func addName(_ sender: UIBarButtonItem) {
        let alert = UI
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "The List"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
    }

}

extension ViewController: UITableViewDataSource {
    func tableView (_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath )
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}
