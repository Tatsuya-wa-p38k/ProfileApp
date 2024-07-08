
import UIKit

class HobbyViewController: UIViewController {

    @IBOutlet weak var resultFortunes: UILabel!

    let images = ["interior01", "interior02", "interior03", "interior04"]
    var currentIndex = 0

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var histroyInteriorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: images[currentIndex])
        updateHistoryLabel()
        // Do any additional setup after loading the view.
    }

    func updateHistoryLabel() {
        let historyText = "これまでのインテリアの軌跡 \(currentIndex + 1)/\(images.count)"
        histroyInteriorLabel.text = historyText
    }

    @IBAction func prevButton(_ sender: UIButton) {
        if currentIndex > 0 {
            currentIndex -= 1
            updateImage()
            animateButton(sender)
        }
    }

    @IBAction func nextButton(_ sender: UIButton) {
        if currentIndex < images.count - 1 {
            currentIndex += 1
            updateImage()
            animateButton(sender)
        }
    }

    func updateImage() {
        //nextButtonとprevButtonをタップした際の画像の切り替えの動き
        UIView.transition(with: imageView,
                          duration: 0.9,
                          options: .transitionCrossDissolve,
                          animations: {
            self.imageView.image = UIImage(named: self.images[self.currentIndex])
        },
                          completion: nil)
        updateHistoryLabel()
    }

    func animateButton(_ button: UIButton) {
        UIView.animate(withDuration: 0.3,
                       animations: {
            button.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        },
                       completion: { _ in
            UIView.animate(withDuration: 0.3) {
                button.transform = CGAffineTransform.identity
            }
        })
    }
}
