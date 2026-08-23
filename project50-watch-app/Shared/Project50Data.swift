import Foundation

struct Project50Episode: Identifiable {
    let id = UUID()
    let week: Int
    let title: String
    let subtitle: String
    let youtubeID: String

    var youtubeURL: URL {
        URL(string: "https://www.youtube.com/watch?v=\(youtubeID)")!
    }
}

// Add new weeks here as Coach Omar posts them.
let project50Episodes: [Project50Episode] = [
    Project50Episode(
        week: 1,
        title: "The Starting Line",
        subtitle: "Building the Foundation to a 100-Mile Ultra",
        youtubeID: "F2Xqs6weGxw"
    )
]
