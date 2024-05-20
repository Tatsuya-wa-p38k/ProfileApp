//
//  InquiryViewController.swift
//  ProfileApp
//
//  Created by spark-06 on 2024/05/20.
//

import UIKit

class InquiryViewController: UIViewController {


    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var inquiryTextfield: UITextField!
    @IBOutlet weak var inquiryNote: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.placeholder = "フルネームで入力して下さい"
        mailTextField.placeholder = "ドメインを含めて入力して下さい"
        inquiryTextfield.placeholder = "具体的な内容で入力して下さい"
        // Do any additional setup after loading the view.

    }
    

    @IBAction func pressButton(_ sender: Any) {
        if let nameText = nameTextField.text, let mailText = mailTextField.text, let inquiryText = inquiryTextfield.text {
            if nameText.isEmpty || mailText.isEmpty || inquiryText.isEmpty {
                inquiryNote.text = "フォームの送信内容に空欄がございます。"
                inquiryNote.textColor = UIColor.red
            }
        }
    }



}
