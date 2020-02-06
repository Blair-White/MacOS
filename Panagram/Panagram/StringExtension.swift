//
//  StringExtension.swift
//  Panagram
//
//  Created by user917733 on 2/5/20.
//  Copyright © 2020 bwhite. All rights reserved.
//

import Foundation

extension String{
    
    func isAnagramOf(_ s: String) -> Bool {
        //1
        let lowerSelf = self.lowercased().replacingOccurrences(of: " ", with: "")
        let lowerOther = s.lowercased().replacingOccurrences(of: " ", with: "")
        //2
        return lowerSelf.sorted() == lowerOther.sorted()
        
    }
    func isPalindrome() -> Bool {
        //1
        let f = self.lowercased().replacingOccurrences(of: " ", with: "")
        //2
        let s = String(f.reversed())
        //3
        return f == s
    }
    
}

