//
//  MovieListScreen.swift
//  MoviesSwiftUI
//
//  Created by Cause  I'm Electric on 2/20/24.
//

import SwiftUI
import SwiftData

struct MovieListScreen: View {
    @Query private var movies: [Movie]
    
    var body: some View {
        List(movies) { movie in
            Text(movie.title)
        }
    }
}

#Preview {
    MovieListScreen()
        .modelContainer(for: [Movie.self])
}
