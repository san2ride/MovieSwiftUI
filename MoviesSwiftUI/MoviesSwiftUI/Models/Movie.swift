//
//  Movie.swift
//  MoviesSwiftUI
//
//  Created by don't touch me on 2/19/24.
//

import Foundation
import SwiftData

@Model
final class Movie {
    var title: String
    var year: Int
    
    init(title: String, year: Int) {
        self.title = title
        self.year = year
    }
    
}
