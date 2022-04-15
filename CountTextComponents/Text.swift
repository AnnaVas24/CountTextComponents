//
//  Text.swift
//  CountTextComponents
//
//  Created by Vasichko Anna on 14.04.2022.
//

import Foundation

struct Text {
    var text = ""
    
    var textOptions: String {
        """
        Total characters: \(totalCharacters) Characters
        Total words: \(countTextComponents(options: .byWords)) Words
        Total lines: \(countTextComponents(options: .byLines)) Lines
        Total sentences: \(countTextComponents(options: .bySentences)) Sentences
        """
    }
    
    private var totalCharacters: Int {
        text.count
    }
    
    private func countTextComponents(options: String.EnumerationOptions) -> Int {
        var components = [Substring]()
    
        text.enumerateSubstrings(in: text.startIndex..<text.endIndex, options: options) { _, substringRange, _, _ in
            components.append(text[substringRange])
        }
        
        return components.count
    }
    
}
