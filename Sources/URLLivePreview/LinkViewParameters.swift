//
//  LinkViewParameters.swift
//  
//
//  Created by robevans on 1/6/22.
//

import SwiftUI

@available(iOS 13.0, *)
public class LinkViewParameters {

    public var url: String
    public var width: CGFloat
    public var height: CGFloat
    public var alignment: Alignment

    public init(
        url: String = "https://www.apple.com",
        width: CGFloat = 150,
        height: CGFloat = 150,
        alignment: Alignment = .center
    ) {
        self.url = url
        self.width = width
        self.height = height
        self.alignment = alignment
    }
}
