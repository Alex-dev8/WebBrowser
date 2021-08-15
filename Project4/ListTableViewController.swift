//
//  ListTableViewController.swift
//  Project4
//
//  Created by Alex Cannizzo on 15/08/2021.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var websites = ["github.com", "bbc.com", "google.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Websites"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website")
        cell?.textLabel?.text = websites[indexPath.row]
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "WebView") as? WebViewController {
            vc.websites = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
