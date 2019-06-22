//
//  MainViewController.swift
//  POCContainerView
//
//  Created by Apinun Wongintawang on 6/23/19.
//  Copyright © 2019 Apinun Wongintawang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var container: ContainerViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onVC1(_ sender: Any) {
        container.segueIdentifierReceivedFromParent("vc1")
    }
    
    @IBAction func onVC2(_ sender: Any) {
        container.segueIdentifierReceivedFromParent("vc2")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "container", let _container = segue.destination as? ContainerViewController {
            container = _container
            container.animationDurationWithOptions = (0.5, .transitionCrossDissolve)
        }
    }
}
