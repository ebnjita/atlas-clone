import SwiftUI

struct BrowserView: View {

    @Environment(AppState.self)
    private var app

    private let columns = [

        GridItem(.adaptive(minimum: 180),
                 spacing: 20)

    ]

    var body: some View {

        ScrollView {

            LazyVGrid(columns: columns,
                      spacing: 20) {

                if let collection = app.selectedCollection {

                    ForEach(collection.items) { item in

                        Button {

                            app.selectedItem = item

                        } label: {

                            ItemCard(item: item)

                        }
                        .buttonStyle(.plain)

                    }

                }

            }
            .padding()

        }

    }

}