//
//  ViewController.swift
//  Tinder
//
//  Created by Syed Hakeem Abbas on 10/11/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet weak var userImageView: DraggableImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userImageView.image = #imageLiteral(resourceName: "ryan")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "profileViewController") as! ProfileViewController
        vc.img = userImageView.image
        self.present(vc, animated: false, completion: nil)
    }
}

