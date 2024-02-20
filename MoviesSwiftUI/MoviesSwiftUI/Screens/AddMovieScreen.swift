//
//  AddMovieScreen.swift
//  MoviesSwiftUI
//
//  Created by don't touch me on 2/19/24.
//

import SwiftUI

struct AddMovieScreen: View {
    
    @State private var title: String = ""
    @State private var year: Int?
    
    var body: some View {
        Form {
            TextField("Title", text: $title)
            TextField("Year", value: $year, format: .number)
        }
    }
}

#Preview {
    AddMovieScreen()
}
