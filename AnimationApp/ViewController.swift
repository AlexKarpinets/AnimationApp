//
//  ViewController.swift
//  AnimationApp
//
//  Created by Karpinets Alexander on 03.08.2021.
//

import Spring

class ViewController: UIViewController {
    
    private var buttonCounter = 1
    private var animation: Animated!
    
    @IBOutlet weak var labelNameAnimation: SpringLabel!
    @IBOutlet weak var springAnimatedView: SpringView!
    
    @IBAction func buttonPressedAction(_ sender: SpringButton) {
        buttonCounter += 1
        
        switch buttonCounter {
        case 1:
            labelNameAnimation.text = """
                Preset: Pop
                Curve: easeInOut
"""
            
            sender.setTitle("Run Shake", for: .normal)
            
            springAnimatedView.animation = "pop"
            springAnimatedView.force = 2
            springAnimatedView.duration = 1
            springAnimatedView.delay = 0
            springAnimatedView.curve = "easeInOut"
            springAnimatedView.animate()
            
        case 2:
            labelNameAnimation.text = """
                Preset: Shake
                Curve: easeInOut
"""
            
            sender.setTitle("Run Squeeze", for: .normal)
            
            springAnimatedView.animation = "shake"
            springAnimatedView.force = 1
            springAnimatedView.duration = 0.7
            springAnimatedView.delay = 0.5
            springAnimatedView.curve = "easeInOut"
            springAnimatedView.animate()
            
        case 3:
            labelNameAnimation.text = """
                Preset: Squeeze
                Curve: easeInSine
"""
            
            sender.setTitle("Run Pop", for: .normal)
            
            springAnimatedView.animation = "squeeze"
            springAnimatedView.force = 3
            springAnimatedView.duration = 2
            springAnimatedView.delay = 1
            springAnimatedView.curve = "easeInSine"
            springAnimatedView.animate()
            
            buttonCounter = 0
            
        default:
            break
        }
    }
}


