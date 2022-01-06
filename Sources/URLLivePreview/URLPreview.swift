//
//  SwiftUIView.swift
//  
//
//  Created by robevans on 1/6/22.
//

import SwiftUI

@available(iOS 13.0, *)
public struct URLPreview: View {
    public var linkViewParameters: LinkViewParameters

    public init(linkViewParameters: LinkViewParameters) {
        self.linkViewParameters = linkViewParameters
    }

    public var body: some View {
        LinkCell(url: URL(string: linkViewParameters.url)!)
            .frame(width: linkViewParameters.width, height: linkViewParameters.height, alignment: linkViewParameters.alignment)
    }
}

@available(iOS 13.0, *)
struct URLPreview_Previews: PreviewProvider {
    static var previews: some View {
        URLPreview(linkViewParameters: LinkViewParameters())
    }
}
