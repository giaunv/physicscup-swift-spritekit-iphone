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
        return sprite
    }
}
