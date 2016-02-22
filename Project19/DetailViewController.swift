//
//  DetailViewController.swift
//  Project19
//
//  Created by Jacques on 22/02/16.
//  Copyright © 2016 J4SOFT. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var capitalName: UILabel!
    @IBOutlet weak var capitalInfo: UILabel!
    
    var capital: Capital?

    override func viewWillAppear(animated: Bool) {
        capitalName.text = capital?.title
        capitalInfo.text = capital?.info
    }
}
