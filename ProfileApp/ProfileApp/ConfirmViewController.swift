//
//  ConfirmViewController.swift
//  ProfileApp
//
//  Created by spark-06 on 2024/05/21.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var nameConfirm: UILabel!
    @IBOutlet weak var mailConfirm: UILabel!
    @IBOutlet weak var inquiryConfirm: UILabel!
    
    var name: String?
    var mail: String?
    var inquiry: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        nameConfirm.text = name
        mailConfirm.text = mail
        inquiryConfirm.text = inquiry
    
    }
    
}
