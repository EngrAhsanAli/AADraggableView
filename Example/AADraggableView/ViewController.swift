//
//  ViewController.swift
//  AADraggableView
//
//  Created by Engr. Ahsan Ali on 31/01/2017.
//  Copyright (c) 2017 AA-Creations. All rights reserved.
//

import UIKit
import AADraggableView

class ViewController: UIViewController {

    @IBOutlet weak var respectedView: UIView!

    @IBOutlet var views: [AADraggableView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        views.forEach { (view) in
            view.delegate = self
            view.respectedView = respectedView
            view.reposition = .sticky
//            view.repositionIfNeeded()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension ViewController: AADraggableViewDelegate {
    func draggingDidBegan(_ sender: UIView) {
        sender.layer.zPosition = 1
        sender.layer.shadowOffset = CGSize(width: 0, height: 20)
        sender.layer.shadowOpacity = 0.3
        sender.layer.shadowRadius = 6
    }
    
    func draggingDidEnd(_ sender: UIView) {
        sender.layer.zPosition = 0
        sender.layer.shadowOffset = CGSize.zero
        sender.layer.shadowOpacity = 0.0
        sender.layer.shadowRadius = 0
    }
}
