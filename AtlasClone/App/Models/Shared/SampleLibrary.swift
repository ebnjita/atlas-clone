import Foundation

extension Library {

    static let sample = Library(

        name: "My Library",

        collections: [

            Collection(

                name: "Research",

                icon: "books.vertical",

                items: [

                    Item(
                        title: "Apple Vision Pro",
                        subtitle: "Website",
                        kind: .url
                    ),

                    Item(
                        title: "Typography",
                        subtitle: "PDF",
                        kind: .pdf
                    ),

                    Item(
                        title: "Design Ideas",
                        subtitle: "Image",
                        kind: .image
                    )

                ]

            ),

            Collection(

                name: "Favorites",

                icon: "star.fill",

                items: [

                    Item(
                        title: "Meeting Notes",
                        subtitle: "Markdown",
                        kind: .note
                    )

                ]

            )

        ]

    )

}