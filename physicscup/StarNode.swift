//
//  StarNode.swift
//  physicscup
//
//  Created by giaunv on 3/28/15.
//  Copyright (c) 2015 366. All rights reserved.
//

import UIKit
import SpriteKit

class StarNode: SKSpriteNode {
    class func star(location: CGPoint) -> StarNode {
        let sprite = StarNode(imageNamed: "star.png")
        
        sprite.xScale = 0.075
        sprite.yScale = 0.075
        sprite.position = location
        
        sprite.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: "star.png"), size: sprite.size)
        if let physic = sprite.physicsBody{
            physic.affectedByGravity = true
            physic.allowsRotation = true
            physic.dynamic = true
            physic.linearDamping = 0.75
            physic.angularDamping = 0.75
        }
        
        return sprite
    }
}
