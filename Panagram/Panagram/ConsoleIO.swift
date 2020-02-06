//
//  ConsoleIO.swift
//  Panagram
//
//  Created by user917733 on 2/5/20.
//  Copyright © 2020 bwhite. All rights reserved.
//

import Foundation


enum OutputType{
    case error
    case standard
}

class ConsoleIO {
    
    func getInput() -> String {
      // 1
      let keyboard = FileHandle.standardInput
      // 2
      let inputData = keyboard.availableData
      // 3
      let strData = String(data: inputData, encoding: String.Encoding.utf8)!
      // 4
      return strData.trimmingCharacters(in: CharacterSet.newlines)
    }

    
    func writeMessage(_ message: String, to: OutputType = .standard) {
        switch to {
        case .standard:
            print("\(message)")
        case .error:
            print("\(message)\n", stderr)
        }
        func getInput() -> String {
         // 1
         let keyboard = FileHandle.standardInput
         // 2
         let inputData = keyboard.availableData
         // 3
         let strData = String(data: inputData, encoding: String.Encoding.utf8)!
         // 4
         return strData.trimmingCharacters(in: CharacterSet.newlines)
        } 
    }
    
    func printUsage() {
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
    writeMessage("usage:")
    writeMessage("\(executableName) -a string1 string2")
    writeMessage("or")
    writeMessage("\(executableName) -p string")
    writeMessage("or")
    writeMessage("\(executableName) -h to show usage information")
    writeMessage("Type \(executableName) without an option to oenter interactive mode.")
    }
    
    
    
}
