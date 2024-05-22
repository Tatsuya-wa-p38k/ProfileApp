
import UIKit



class HobbyViewController: UIViewController {

    @IBOutlet weak var resultFortunes: UILabel!

    let images = ["interior01", "interior02", "interior03", "interior04"]
    var currentIndex = 0

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: images[currentIndex])
        // Do any additional setup after loading the view.

        // UIImageViewにタップジェスチャーを追加
              let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        imageView.isUserInteractionEnabled = true
        imageView
            .addGestureRecognizer(tapGesture)
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



    @IBAction func pressButtonHosokiKazuko(_ sender: Any) {
        uranai()
    }

    @objc func imageTapped() {
          shakeAnimation()
      }

    func shakeAnimation() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 5
        shake.autoreverses = true

        let fromPoint = CGPoint(x: imageView.center.x - 5, y: imageView.center.y)
        let toPoint = CGPoint(x: imageView.center.x + 5, y: imageView.center.y)
        shake.fromValue = NSValue(cgPoint: fromPoint)
        shake.toValue = NSValue(cgPoint: toPoint)

        imageView.layer.add(shake, forKey: "position")
    }


    func uranai() {

        let fortunesType = [
            "『素敵な出会いがあるわよ。』",
            "『悪くないわね。』",
            "『あなた地獄に堕ちるわよ。』",
        ]

        let resultFortunesRandom = Int.random(in: 0..<fortunesType.count)

        switch resultFortunesRandom {
        case 0 :
            resultFortunes.text = "『素敵な出会いがあるわよ。』"
        case 1 :
            resultFortunes.text = "『悪くないわね。』"

        case 2:
            resultFortunes.text = "『あなた地獄に堕ちるわよ。』"
        default:
            break
        }
    }




}
