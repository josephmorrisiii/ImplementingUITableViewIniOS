//
//  ViewController.swift
//  Try
//
//  Created by Joseph Morris on 3/19/19.
//  Copyright © 2019 Joseph Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var contactApp: UITableView!
    
    var contactNames = ["Valeria Rico", "Joseph Morris", "Cathy Morris", "Nicole Gauthier", "Zoe Morris"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.contactApp.dataSource = self
        self.contactApp.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = contactNames[indexPath.item]
     return cell
    }
}

