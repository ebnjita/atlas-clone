import SwiftUI

struct SidebarView: View {

    @Environment(AppState.self)
    private var app

    var body: some View {

        List(selection: $app.selectedCollection) {

            Section("Collections") {

                ForEach(app.library.collections) { collection in

                    Label(collection.name,
                          systemImage: collection.icon)
                        .tag(collection)

                }

            }

        }
        .navigationTitle(app.library.name)

    }

}