//
//  ViewController.swift
//  struct
//
//  Created by Austin Fooce on 3/23/21.
//  Copyright © 2021 DaFooce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myCharacter = CharacterCard(character: .knotSmith)
    var otherCharacter = CharacterCard(character: .medic)
    override func viewDidLoad() {
        super.viewDidLoad()
       print( myCharacter.modStat(stat: .removeHeart))
        print( myCharacter.modStat(stat: .removeHeart))
        print( myCharacter.modStat(stat: .removeHeart))
        print( myCharacter.modStat(stat: .removeHeart))
        print( myCharacter.modStat(stat: .removeHeart))
        
        print(myCharacter.hearts)
        print(myCharacter.rope)

    }


}

