import SwiftUI

struct EpisodeListView: View {
    var body: some View {
        NavigationView {
            List(project50Episodes) { episode in
                NavigationLink(destination: EpisodeDetailView(episode: episode)) {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Week \(episode.week)")
                            .font(.caption2)
                            .foregroundColor(.orange)
                        Text(episode.title)
                            .font(.headline)
                    }
                }
            }
            .navigationTitle("Project 50")
        }
    }
}
