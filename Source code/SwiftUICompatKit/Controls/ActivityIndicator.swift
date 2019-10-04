//
//  ActivityIndicator.swift
//  SwiftUICompatKit
//
//  Created by Amir on 4/10/19.
//  Copyright © 2019 Amir Kamali. All rights reserved.
//

import SwiftUI

public struct ActivityIndicator: UIViewRepresentable {
    
    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style
    
    public init(isAnimating:Binding<Bool>,style:UIActivityIndicatorView.Style){
        self._isAnimating = isAnimating
        self.style = style
    }
    
    public func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    public func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
