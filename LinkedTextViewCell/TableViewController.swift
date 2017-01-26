//
//  TableViewController.swift
//  LinkedTextViewCell
//
//  Created by Imanou Petit on 24/01/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var cell: TextViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Add text to cell's textView

        let text = "http://www.google.com Lorem ipsum dolor sit amet, consectetur adipiscing elit, http://www.yahoo.com sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        cell.textView.text = text
    }

}
