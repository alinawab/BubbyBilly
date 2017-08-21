//
//  GameViewController.swift
//  BubbyBilly
//
//  Created by Ali Nawab on 2017-04-11.
//  Copyright © 2017 alinawab. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {


    @IBOutlet weak var bubbyPicture: UIButton!
    
    @IBOutlet weak var billyPicture: UIButton!
    var bubbycount:Int = 0
    var billycount:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GKScene(fileNamed: "GameScene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! GameScene? {
                
                // Copy gameplay related content over to the scene
                sceneNode.entities = scene.entities
                sceneNode.graphs = scene.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .aspectFill
                
                // Present the scene
                if let view = self.view as! SKView? {
                    view.presentScene(sceneNode)
                    
                    view.ignoresSiblingOrder = true
                    
                    view.showsFPS = true
                    view.showsNodeCount = true
                }
            }
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    
    
    @IBAction func bubbyClick(_ sender: Any) {
        
        if bubbycount == 0 {
        let bubbyimage = UIImage(named: "IMG_1163.png")
            bubbyPicture.setImage(bubbyimage, for: UIControlState.normal)
            bubbycount = bubbycount + 1
        }
        else{
//            let coverImage = UIImage(named: "the_series_1")
//            bubbyPicture.setImage(bubbyimage, for: UIControlState.normal)
        }
    }
    

    @IBAction func billyClick(_ sender: Any) {
        let billyyimage = UIImage(named: "IMG_5816.png")
        billyPicture.setImage(billyyimage, for: UIControlState.normal)
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
