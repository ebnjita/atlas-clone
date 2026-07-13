import SwiftUI

struct InspectorView: View {

    @Environment(AppState.self)
    private var app

    var body: some View {

        if let item = app.selectedItem {

            Form {

                LabeledContent("Title") {

                    Text(item.title)

                }

                LabeledContent("Kind") {

                    Text(item.kind.rawValue)

                }

                LabeledContent("Created") {

                    Text(item.createdAt.formatted())

                }

            }
            .navigationTitle("Inspector")

        }

        else {

            ContentUnavailableView(

                "Nothing Selected",

                systemImage: "sidebar.right"

            )

        }

    }

}