import Foundation

struct Station: Hashable, Codable, Identifiable {
    var id: String
    var hebrew: String
    var arabic: String
    var english: String
    var russian: String
}
