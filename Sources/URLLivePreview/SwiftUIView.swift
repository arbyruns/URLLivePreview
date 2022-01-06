//
//  SwiftUIView.swift
//  
//
//  Created by robevans on 1/6/22.
//

import SwiftUI

@available(iOS 13.0, *)
public struct SwiftUIView: View {
    public init() {}
    public var body: some View {
        Text("Hello, World!")
    }
}

@available(iOS 13.0, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
