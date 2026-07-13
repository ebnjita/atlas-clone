import SwiftUI

struct RootView: View {

    @Environment(AppState.self)
    private var app

    var body: some View {

        NavigationSplitView {

            SidebarView()

        } content: {

            BrowserView()

        } detail: {

            InspectorView()

        }
        .navigationSplitViewStyle(.balanced)
        .searchable(text: $app.searchText)

    }

}