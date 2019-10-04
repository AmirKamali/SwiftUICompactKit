//
//  ActivityIndicatorExample.swift
//  SampleApplication
//
//  Created by Amir on 4/10/19.
//  Copyright © 2019 Amir Kamali. All rights reserved.
//

import SwiftUI
import SwiftUICompatKit

struct ActivityIndicatorExample: View {
    @State var isLoading = false
    var body: some View {
        VStack{
            ActivityIndicator(isAnimating:$isLoading,style: .medium)
            if isLoading {
                Text("Please wait")
            }else {
                Text("Not Loaded")
            }
            
            Button(action:{self.isLoading.toggle()}){
                if (isLoading){
                    Text("Stop Action")
                }else {
                    Text("Perform Action")
                }
            }.padding()
            
            
        }
    }
}

struct ActivityIndicatorExample_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorExample()
    }
}
