
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

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if let confirmViewController = segue.destination as? ConfirmViewController {
//
//            if let nameText = self.nameTextField.text, let mailText = self.mailTextField.text, let inquiryText = self.inquiryTextfield.text {
//                confirmViewController.nameConfirm = nameText,
//                confirmViewController.mailConfirm = mailText,
//                confirmViewController.inquiryConfirm = inquiryText
//            }
//        }
//    }

    @IBAction func pressButton(_ sender: Any) {

    }


}
