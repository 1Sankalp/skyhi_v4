// DetailViewController.swift

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var buyNowButton: UIButton!

    var imageName: String!
    var titleText: String!
    var priceText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceLabel.text = priceText
        imageView.image = UIImage(named: imageName)
        descriptionLabel.text = titleText
    }
    
    @IBAction func buyNowButtonTapped(_ sender: UIButton) {
        let vc = (storyboard?.instantiateViewController(withIdentifier: "BoughtViewController"))!
        navigationController?.pushViewController(vc, animated: true)
    }
}
