//
//  ViewController.swift
//  HeartAnimation
//
//  Created by Alex on 1/16/20.
//  Copyright © 2020 Weekend. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    var isPressed: Bool = false
    let selection = UISelectionFeedbackGenerator()
    
    // MARK: - Outlets
    
    @IBOutlet weak var heartBtn: UIButton!
    
    // MARK: - Actions
    
    @IBAction func heartBtnPressed(_ sender: UIButton) {
        isPressed.toggle()
        selection.selectionChanged()

        UIView.animate(withDuration: 0.15, animations: {
            self.heartBtn.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
            
            if !self.isPressed {
                self.heartBtn.tintColor = #colorLiteral(red: 0.3174035251, green: 0.8997975588, blue: 0.8444465399, alpha: 1)
            } else {
                self.heartBtn.tintColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            }
            
        }) { (_) in
            UIView.animate(withDuration: 0.15) {
                self.heartBtn.transform = .identity
            }
        }
    }
    
    // MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    private func setupUI(){
        if !isPressed {
            self.heartBtn.tintColor = #colorLiteral(red: 0.3174035251, green: 0.8997975588, blue: 0.8444465399, alpha: 1)
        } else {
            self.heartBtn.tintColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
    }

}

