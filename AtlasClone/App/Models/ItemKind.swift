import Foundation

enum ItemKind: String, Codable, CaseIterable, Sendable {
    case image
    case pdf
    case video
    case url
    case note
    case file
}