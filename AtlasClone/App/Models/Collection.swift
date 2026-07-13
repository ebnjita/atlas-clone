import Foundation

struct Collection: Identifiable, Hashable, Codable, Sendable {

    var id: UUID = UUID()

    var name: String

    var icon: String = "folder"

    var items: [Item] = []

}