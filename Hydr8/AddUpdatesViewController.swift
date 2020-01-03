//
//  AddUpdatesViewController.swift
//  Hydr8
//
//  Created by Chloe Yan on 12/31/19.
//  Copyright © 2019 Chloe Yan. All rights reserved.
//
//  Tracks and manages water consumption data.

import UIKit
import BubbleTransition

class AddUpdatesViewController: UIViewController {
    
    // MARK: OUTLETS & ACTIONS

    @IBOutlet weak var addUpdateTextField: UITextField!
    @IBOutlet weak var addUpdatesButton: UIButton!
    
    @IBAction func addUpdatesButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        interactiveTransition?.finish()
    }
    
    @IBOutlet weak var closeButton: UIButton!
    @IBAction func closeAction(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
        interactiveTransition?.finish()
    }
    
    // MARK: VARIABLES
    
    weak var interactiveTransition: BubbleInteractiveTransition?
  
    // MARK: DEFAULT APPEARANCES

    override func viewDidLoad() {
      super.viewDidLoad()
        addUpdatesButton.layer.cornerRadius = 16
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
  
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // MARK: KEYBOARD FUNCTIONALITY
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
}
