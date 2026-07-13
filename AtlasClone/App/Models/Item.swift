import Foundation

struct Item: Identifiable, Hashable, Codable, Sendable {

    var id: UUID = UUID()

    var title: String

    var subtitle: String = ""

    var kind: ItemKind

    var tags: [Tag] = []

    var notes: String = ""

    var createdAt: Date = .now

    var modifiedAt: Date = .now

}