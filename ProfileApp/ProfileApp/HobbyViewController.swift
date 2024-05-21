
import UIKit

class HobbyViewController: UIViewController {

    let images = ["interior01", "interior02", "interior03", "interior04"]

    var currentIndex = 0

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: images[currentIndex])
        // Do any additional setup after loading the view.
    }

    @IBAction func prevButton(_ sender: UIButton) {
        if currentIndex > 0 {
            currentIndex -= 1
            updateImage()
        }
    }

    @IBAction func nextButton(_ sender: UIButton) {
        if currentIndex < images.count - 1 {
            currentIndex += 1
            updateImage()
        }
    }

    func updateImage() {
        imageView.image = UIImage(named: images[currentIndex])
    }


}
