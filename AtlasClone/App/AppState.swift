import Foundation
import Observation

@Observable
final class AppState {

    var library: Library = .sample

    var selectedCollection: Collection?

    var selectedItem: Item?

    var searchText: String = ""

    init() {
        selectedCollection = library.collections.first
    }

}