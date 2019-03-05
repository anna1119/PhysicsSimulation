//
//  GameViewController.swift
//  Friction
//
//  Created by Home on 2018-11-29.
//  Copyright © 2018 Home. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class FrictionGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as? SKView {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "FrictionGameScene") as? FrictionGameScene {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                 scene.viewController = self
                // Present the scene
                
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
