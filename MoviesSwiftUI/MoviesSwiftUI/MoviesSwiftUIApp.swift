//
//  MoviesSwiftUIApp.swift
//  MoviesSwiftUI
//
//  Created by don't touch me on 2/19/24.
//

import SwiftUI

@main
struct MoviesSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                //AddMovieScreen()
                MovieListScreen()
            }
        }.modelContainer(for: [Movie.self])
    }
}
