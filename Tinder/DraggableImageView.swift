//
//  DraggableImageView.swift
//  Tinder
//
//  Created by Syed Hakeem Abbas on 10/11/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

extension Int {
    var degreesToRadians: Double { return Double(self) * .pi / 180 }
}
extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
    var radiansToDegrees: Self { return self * 180 / .pi }
}

class DraggableImageView: UIView {


    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var containerView: UIView!
    var initialPosition: CGPoint!
    
    var image: UIImage! {
        didSet {
            imageView.image = image
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubViews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubViews()
    }

    func initSubViews() {
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        containerView.frame = bounds
        addSubview(containerView)
    }
    
    @IBAction func onImagePanned(_ sender: UIPanGestureRecognizer) {
        _ = sender.location(in: containerView)
        let locationInView = sender.location(in: imageView)
        let translation = sender.translation(in: containerView)
        
        if sender.state == .began {
            initialPosition = imageView.center
        } else if sender.state == .changed {
            let degrees = ((locationInView.x - initialPosition.x)/500).degreesToRadians
            imageView.transform = imageView.transform.rotated(by: degrees)
            imageView.center = CGPoint(x: translation.x + initialPosition.x, y: initialPosition.y)
        } else if sender.state == .ended {
    
            if translation.x > 50 {
                
            } else if translation.x < -50 {
                
            } else {
                imageView.center = initialPosition
                imageView.transform = CGAffineTransform.identity
            }
        }
    }
}
