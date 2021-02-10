//
//  ListTableViewController.swift
//  Parallax-UD
//
//  Created by Arghadeep  on 09/02/21.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ParallaxCell", for: indexPath) as? ParallaxCell else { return UITableViewCell() }
        cell.configureItemImage(withImage: imageArray[indexPath.row], andDescription: nameArray[indexPath.row])
        return cell
    }

}

