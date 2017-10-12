//
//  ProfileViewController.swift
//  Tinder
//
//  Created by Syed Hakeem Abbas on 10/11/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var userImage: UIImageView!
    var img: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.image = img
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        self.dismiss(animated: false, completion: nil)
    }
}
