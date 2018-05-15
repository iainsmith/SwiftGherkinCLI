//
//  Helpers.swift
//  GherkinCLILib
//
//  Created by iainsmith on 30/03/2018.
//

import Foundation

extension String {
    var className: String {
        return capitalized.replacingOccurrences(of: " ", with: "")
    }

    var methodName: String {
        let intermediate = lowercased().capitalized
        return intermediate.components(separatedBy: " ").joined()
    }

    var normalized: String {
        var validCharacters = CharacterSet.alphanumerics
        validCharacters.insert(" ")
        let valid = unicodeScalars.filter { validCharacters.contains($0) }
        return String(valid)
    }

    var underscored: String {
        return lowercased().components(separatedBy: " ").joined(separator: "_")
    }

    func padEachLine(_ spaces: Int) -> String {
        return components(separatedBy: "\n").map { $0.padded(spaces) }.joined(separator: "\n")
    }

    func padded(_ spaces: Int) -> String {
        let padding = (1 ... spaces).map({ _ in " " }).joined()
        return padding + self
    }
}

extension Array where Element: Hashable {
    func unique() -> [Element] {
        return Array(Set(self))
    }
}
