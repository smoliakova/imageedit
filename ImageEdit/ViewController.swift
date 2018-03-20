//
//  ViewController.swift
//  ImageEdit
//
//  Created by Катя Смолякова on 3/21/18.
//  Copyright © 2018 Катя Смолякова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func rotateImage(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            let angel = Double((sender as AnyObject).titleForSegment(at: (sender as AnyObject).selectedSegmentIndex)!)!
            self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat(angel/180 * .pi))
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

