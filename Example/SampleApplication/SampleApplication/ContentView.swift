//
//  ContentView.swift
//  SampleApplication
//
//  Created by Amir on 27/9/19.
//  Copyright © 2019 Amir Kamali. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ImagePickerExample()){
                    Text("Image picker")
                }
                NavigationLink(destination: CollectionViewExample()){
                    Text("Collection view")
                }
                NavigationLink(destination: ActivityIndicatorExample()){
                    Text("Activity Indicator")
                }
                
            }.navigationBarTitle("Examples")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
