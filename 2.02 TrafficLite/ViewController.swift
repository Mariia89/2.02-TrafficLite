
//  ViewController.swift
//  TrafficLite_HW2
//
//  Created by Мария Чудакова on 19.06.2022.
//

import UIKit

enum TrafficLightState {
    case red, yellow, green
    
    
    class ViewController: UIViewController {
        
        
        @IBOutlet var redCircle: UIView!
        @IBOutlet var greenCircle: UIView!
        @IBOutlet var yellowCircle: UIView!
        
        @IBOutlet var startButton: UIButton!
        
        private var trafficLiteState = TrafficLightState.red
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            startButton.layer.cornerRadius = 10
        }
        
        override func viewWillLayoutSubviews() {
            redCircle.layer.cornerRadius = redCircle.frame.width / 2
            yellowCircle.layer.cornerRadius = redCircle.frame.width / 2
            greenCircle.layer.cornerRadius = redCircle.frame.width / 2
        }
            @IBAction func buttonTapped() {
                if startButton.currentTitle == "START" {
                    startButton.setTitle("NEXT", for: .normal)
                }
                
                
                
                switch trafficLiteState {
                case .red:
                    redCircle.alpha = 0.1
                    greenCircle.alpha = 1
                    yellowCircle.alpha = 0.1
                    trafficLiteState = .yellow
                case .yellow:
                    redCircle.alpha = 1
                    greenCircle.alpha = 0.1
                    yellowCircle.alpha = 0.1
                    trafficLiteState = .green
                case .green:
                    redCircle.alpha = 0.1
                    greenCircle.alpha = 0.1
                    yellowCircle.alpha = 1
                    trafficLiteState = .red
                }
                
                
                
            }
            
        }
    }

