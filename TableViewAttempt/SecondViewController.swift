//
//  SecondViewController.swift
//  TableViewAttempt
//
//  Created by Christopher Goldswain on 16.12.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgLabel: UILabel!
    
    var img = UIImage()
    var ryan_text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgView.image = img
        imgLabel.text = ryan_text
    }
    
}
