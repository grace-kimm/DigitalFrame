//
//  ViewController.swift
//  DigitalFrame
//
//  Created by kakao on 05/07/2020.
//  Copyright © 2020 ddaeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named:"dog1.jpeg")!,
        UIImage(named:"dog2.jpeg")!,
        UIImage(named:"dog3.jpeg")!,
        UIImage(named:"dog4.jpeg")!,
        UIImage(named:"dog5.jpg")!,
        UIImage(named:"dog6.jpg")!,
        UIImage(named:"dog7.jpg")!,
        UIImage(named:"dog8.jpg")!,
        UIImage(named:"dog9.jpg")!,
        UIImage(named:"dog10.jpg")!,
        UIImage(named:"dog11.jpeg")!,
        UIImage(named:"dog12.jpeg")!,
        UIImage(named:"dog13.jpeg")!,
        UIImage(named:"dog14.jpg")!,
        UIImage(named:"dog15.jpeg")!
        ]
        
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
    
    @IBAction func toggleButton(_ sneder:Any) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for:UIControl.State.normal)
        } else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for:UIControl.State.normal)
        }
    }
    
    @IBAction func speedSliderAction(_ sender:Any) {
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for:UIControl.State.normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
        
    }


}

