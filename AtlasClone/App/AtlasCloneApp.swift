import SwiftUI

@main
struct AtlasCloneApp: App {

    @State
    private var appState = AppState()

    var body: some Scene {

        WindowGroup {

            RootView()
                .environment(appState)

        }
        .commands {

            SidebarCommands()

        }

    }

}