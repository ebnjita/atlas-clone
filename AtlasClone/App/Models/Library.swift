import Foundation

struct Library: Codable, Sendable {

    var name: String

    var collections: [Collection]

}