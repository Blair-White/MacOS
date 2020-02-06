//
//  main.swift
//  Panagram
//
//  Created by user917733 on 2/5/20.
//  Copyright © 2020 bwhite. All rights reserved.
//

import Foundation

let panagram = Panagram()
if CommandLine.argc < 2 {
    panagram.interactiveMode()
}else {
    panagram.staticMode()
}

