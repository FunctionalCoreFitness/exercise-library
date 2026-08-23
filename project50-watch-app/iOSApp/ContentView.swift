import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(project50Episodes) { episode in
                Link(destination: episode.youtubeURL) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Week \(episode.week)")
                            .font(.caption)
                            .foregroundColor(.orange)
                        Text(episode.title)
                            .font(.headline)
                        Text(episode.subtitle)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Project 50")
        }
    }
}
