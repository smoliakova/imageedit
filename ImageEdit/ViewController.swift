//
//  ViewController.swift
//  ImageEdit
//
//  Created by Катя Смолякова on 3/21/18.
//  Copyright © 2018 Катя Смолякова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberOfSize: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func rotateImage(_ sender: Any) {
        UIView.animate(withDuration: 1.5) {
            let angle = Double((sender as AnyObject).titleForSegment(at: (sender as AnyObject).selectedSegmentIndex)!)!
            self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat(angle/180 * .pi))
        }
    }
    
    @IBAction func sizeStepper(_ sender: UIStepper) {
        let stepperValue = Int(sender.value)
        numberOfSize.text = String(stepperValue)
        

        
    }
    
}










