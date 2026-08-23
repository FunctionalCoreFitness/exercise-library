import SwiftUI
import WatchKit

struct EpisodeDetailView: View {
    let episode: Project50Episode

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                Text("Week \(episode.week)")
                    .font(.caption)
                    .foregroundColor(.orange)
                Text(episode.title)
                    .font(.title3)
                    .bold()
                Text(episode.subtitle)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Button(action: {
                    WKExtension.shared().openSystemURL(episode.youtubeURL)
                }) {
                    Label("Watch on iPhone", systemImage: "play.circle.fill")
                }
                .tint(.orange)
            }
            .padding()
        }
        .navigationTitle("Episode")
    }
}
