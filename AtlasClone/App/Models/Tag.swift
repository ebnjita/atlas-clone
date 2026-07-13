import Foundation

struct Tag: Identifiable, Hashable, Codable, Sendable {

    var id: UUID = UUID()

    var name: String

    var color: String?

}