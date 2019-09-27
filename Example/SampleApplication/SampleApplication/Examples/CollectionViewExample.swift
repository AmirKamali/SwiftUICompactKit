//
//  CollectionViewExample.swift
//  SampleApplication
//
//  Created by Amir on 27/9/19.
//  Copyright © 2019 Amir Kamali. All rights reserved.
//

import SwiftUI
import SwiftUICompatKit


// Mark ContentView
struct CollectionViewExample: View {
    
    @State var collectionDataSource:CollectionDataSource = CollectionDataSource()
    
    
    var body: some View {
        
        CollectionView(dataSource: CollectionDataSource(), collectionViewLayout: UICollectionViewFlowLayout(),onSetup:registerCollectionCells).padding()
        
    }
    func registerCollectionCells(collectionView:UICollectionView){
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: CollectionCell.identifier)
    }
    
}

struct CollectionViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Mark - CollectionViewCell
class CollectionCell:UICollectionViewCell {
    static let identifier: String = "collectionCell"
}


// Mark - Datasource
class CollectionDataSource:NSObject,UICollectionViewDataSource {
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath as IndexPath)
        
        cell.backgroundColor = UIColor.green
        return cell
    }
}
