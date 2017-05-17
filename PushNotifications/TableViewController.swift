//
//  TableViewController.swift
//  PushNotifications
//
//  Created by Guilherme Paciulli on 17/05/17.
//  Copyright © 2017 Guilherme Paciulli. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var notifications: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = notifications[indexPath.row]
        return cell
    }
}
