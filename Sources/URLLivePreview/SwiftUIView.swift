//
//  SwiftUIView.swift
//  
//
//  Created by robevans on 1/6/22.
//

import SwiftUI

@available(iOS 13.0, *)
public struct SwiftUIView: View {
//    public init() {}
    var url: String
    var width: CGFloat
    var height: CGFloat
    var alignment: Alignment

    public var body: some View {
        LinkCell(url: URL(string: url)!)
            .frame(width: width, height: height, alignment: alignment)
    }
}

@available(iOS 13.0, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(url: "https://www.apple.com/", width: 150, height: 150, alignment: .center)
    }
}
