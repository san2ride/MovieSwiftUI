//
//  String+Extensions.swift
//  MoviesSwiftUI
//
//  Created by don't touch me on 2/19/24.
//

import Foundation

extension String {
    
    var isEmptyOrWhiteSpace: Bool {
        self.trimmingCharacters(in: .whitespaces).isEmpty
    }
}
