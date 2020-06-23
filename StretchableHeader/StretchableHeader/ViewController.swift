//
//  ViewController.swift
//  StretchableHeader
//
//  Created by Lucas Coelho on 22/06/2020.
//  Copyright © 2020 Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var headerHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < 0 {
            headerHeight.constant = 250 - scrollView.contentOffset.y
        } else {
            headerHeight.constant = 250
        }
    }
}
