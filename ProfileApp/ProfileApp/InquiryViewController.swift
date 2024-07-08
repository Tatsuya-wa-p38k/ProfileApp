
import UIKit

class InquiryViewController: UIViewController {


    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var inquiryTextfield: UITextField!
    @IBOutlet weak var inquiryNote: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.placeholder = "フルネームで入力して下さい"
        mailTextField.placeholder = "ドメイン(@以降)も含めて入力して下さい"
        // Do any additional setup after loading the view.

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showConfirmation" {
            let confirmationVC = segue.destination as! ConfirmViewController
            confirmationVC.name = nameTextField.text
            confirmationVC.mail = mailTextField.text
            confirmationVC.inquiry = inquiryTextfield.text
        }
    }

    @IBAction func pressButton(_ sender: Any) {
//performSegue(withIdentifier: "showConfirmation", sender: self)
    }
}
