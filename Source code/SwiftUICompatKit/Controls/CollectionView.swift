//
//  CollectionView.swift
//  SwiftUICompatKit
//
//  Created by Amir on 27/9/19.
//  Copyright © 2019 Amir Kamali. All rights reserved.
//

import SwiftUI


public struct CollectionView: UIViewRepresentable {
    public typealias UIViewType = UICollectionView
    public var dataSource: UICollectionViewDataSource
    public var delegate:UICollectionViewDelegate?
    let collectionViewLayout:UICollectionViewLayout
    var onSetup:((UICollectionView)-> Void)
    public init (dataSource:UICollectionViewDataSource, delegate:UICollectionViewDelegate? = nil, collectionViewLayout:UICollectionViewLayout,onSetup:@escaping ((UICollectionView)-> Void)) {
        self.onSetup = onSetup
        self.dataSource = dataSource
        self.delegate = delegate
        self.collectionViewLayout = collectionViewLayout
        
    }
    
    public func makeUIView(context: UIViewRepresentableContext<CollectionView>) -> UICollectionView {
        let collectionView:UICollectionView
        collectionView = UICollectionView(frame: CGRect(), collectionViewLayout: collectionViewLayout)
        onSetup(collectionView)
        collectionView.dataSource = dataSource
        collectionView.delegate = delegate
        return collectionView
    }
    
    public func updateUIView(_ uiView: UICollectionView, context: UIViewRepresentableContext<CollectionView>) {
        
    }
    
    
    
}
