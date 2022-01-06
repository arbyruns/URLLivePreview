//
//  LinkCellView.swift
//  RealScheduler
//
//  Created by robevans on 12/7/21.
//

import SwiftUI
import LinkPresentation

@available(iOS 13.0, *)
public struct LinkCell: UIViewRepresentable {

    var url: URL

    public func makeUIView(context: Context) -> LPLinkView {

        let linkView = LPLinkView(url: url)
        let dataProvider = LPMetadataProvider()
        // swiftlint:disable unused_closure_parameter
        dataProvider.startFetchingMetadata(for: url) { (metaData, error) in
            if let metaData = metaData {
                DispatchQueue.main.async {
                    linkView.metadata = metaData
                    linkView.sizeToFit()
                }
            }
        }
        return linkView
    }

    public func updateUIView(_ uiView: LPLinkView, context: Context) {
//        let linkview =
    }
}

@available(iOS 13.0, *)
struct LinkCellView_Previews: PreviewProvider {
    static var previews: some View {
        LinkCell(url: URL(string:
                            // swiftlint:disable line_length
                            "https://www.apple.com/")!)
    }
}
