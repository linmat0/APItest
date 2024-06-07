//
//  ContentView.swift
//  APItest
//
//  Created by Lin, Matthew (CDNP) on 05/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var advice: String = "Loading..."

    var body: some View {
        VStack {
            Text("Hello")
            Text(advice)
                .onAppear {
                    Task {
                        do {
                            advice = try await apiCall()
                        } catch {
                            advice = "Failed to load advice"
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
