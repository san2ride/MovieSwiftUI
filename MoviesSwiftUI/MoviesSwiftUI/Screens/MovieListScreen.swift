//
//  MovieListScreen.swift
//  MoviesSwiftUI
//
//  Created by Cause  I'm Electric on 2/20/24.
//

import SwiftUI
import SwiftData

struct MovieListScreen: View {
    @Query(sort: \Movie.title, order: .reverse) private var movies: [Movie]
    @State private var isAddMoviePresented: Bool = false
    
    var body: some View {
        List(movies) { movie in
            Text(movie.title)
        }.toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Add Movie") {
                    isAddMoviePresented = true
                }
            }
        })
        .sheet(isPresented: $isAddMoviePresented, content: {
            NavigationStack {
                AddMovieScreen()
            }
        })
    }
}

#Preview {
    NavigationStack {
        MovieListScreen()
            .modelContainer(for: [Movie.self])
    }
}
