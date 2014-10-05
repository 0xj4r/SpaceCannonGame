//
//  GameScene.swift
//  SpaceCannonGame
//
//  Created by Josh Ransom on 10/4/14.
//  Copyright (c) 2014 RansomNode. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    override func didMoveToView(view: SKView) {
        // Add the background Image.
        var background = SKSpriteNode(imageNamed: "Starfield")
        background.size = CGSizeMake(self.size.width, self.size.height)
        background.position = CGPointMake(self.size.width/2, self.size.height/2)
        self.addChild(background)
        
        // Add the main SpriteKit layer.
        var main = SKNode()
        self.addChild(main)
        
        // Add the canon to the main layer.
        var cannon = SKSpriteNode(imageNamed: "Cannon")
        cannon.position = CGPointMake(self.size.width * 0.5, 0.0)
        main.addChild(cannon)
        
        // Add the action sequence for the cannon.
        var positive = CGFloat(M_PI)
        var negative = -1 * positive
        var rotateCannon = SKAction.sequence([SKAction.rotateByAngle(positive, duration: 2.0), SKAction.rotateByAngle(negative, duration: 2.0)])
        cannon.runAction(SKAction.repeatActionForever(rotateCannon))
        
    }
    
    
    func fireCannon() {
        var ball = SKSpriteNode(imageNamed: "Ball")
    }
      
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            fireCannon()
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
