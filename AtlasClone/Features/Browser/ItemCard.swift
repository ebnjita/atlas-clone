import SwiftUI

struct ItemCard: View {

    let item: Item

    var body: some View {

        VStack(spacing: 12) {

            RoundedRectangle(cornerRadius: 12)
                .fill(.quaternary)
                .frame(height: 140)
                .overlay {

                    Image(systemName: symbol)

                        .font(.largeTitle)

                }

            VStack(alignment: .leading) {

                Text(item.title)
                    .font(.headline)

                Text(item.subtitle)
                    .foregroundStyle(.secondary)

            }
            .frame(maxWidth: .infinity,
                   alignment: .leading)

        }

    }

    private var symbol: String {

        switch item.kind {

        case .image:
            "photo"

        case .pdf:
            "doc.richtext"

        case .video:
            "film"

        case .url:
            "link"

        case .note:
            "note.text"

        case .file:
            "doc"

        }

    }

}