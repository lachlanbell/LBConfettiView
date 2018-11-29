//
//  ViewController.swift
//  LBConfettiViewExample
//
//  Created by Lachlan Bell on 29/11/18.
//  Copyright © 2018 Lachlan Bell. All rights reserved.
//

import UIKit
import LBConfettiView

class ViewController: UIViewController {

    @IBOutlet weak var styleSegmentedControl: UISegmentedControl!
    @IBOutlet weak var intensitySlider: UISlider!
    
    var confettiView: ConfettiView!
    
    override var prefersStatusBarHidden: Bool { return true } // Hide status bar
    
    override var prefersHomeIndicatorAutoHidden: Bool { return true } // Auto hide home bar
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create confetti view
        confettiView = ConfettiView(frame: self.view.bounds)
        
        // Add confetti view as subview
        self.view.addSubview(confettiView)
        
        // Set confetti intensity (between 0...1)
        confettiView.intensity = 0.5
        
        // Set confetti style (confetti / diamond / star / triangle)
        confettiView.style = .confetti
        
        // Set confetti scale
        confettiView.scale = .auto // Auto: large scale on iPads, small on other iOS devices
    }
    
    @IBAction func toggleConfetti(_ sender: Any) {
        if confettiView.animating {
            confettiView.stop(clear: false) // Stop confetti - set clear to true to clear confetti immediately
        } else {
            confettiView.start() // Start confetti
        }
    }
    
    @IBAction func intensityChanged(_ sender: Any) {
        // Set confetti intensity (between 0...1)
        confettiView.intensity = intensitySlider.value
    }
    
    @IBAction func changeConfettiType(_ sender: Any) {
        // Set confetti style
        switch styleSegmentedControl.selectedSegmentIndex {
        case 0:
            confettiView.style = .confetti
        case 1:
            confettiView.style = .diamond
        case 2:
            confettiView.style = .star
        case 3:
            confettiView.style = .triangle
        default:
            confettiView.style = .confetti
        }
    }
}
