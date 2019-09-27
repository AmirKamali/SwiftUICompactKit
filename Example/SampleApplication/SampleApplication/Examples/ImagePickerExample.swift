//
//  ImagePickerExample.swift
//  SampleApplication
//
//  Created by Amir on 27/9/19.
//  Copyright © 2019 Amir Kamali. All rights reserved.
//

import SwiftUI
import SwiftUICompatKit
struct ImagePickerExample: View {

    @State var showImagePicker: Bool = false
    @State var image: Image? = nil

    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    withAnimation {
                        self.showImagePicker.toggle()
                    }
                }) {
                    Text("Show image picker")
                }
                image?.resizable().frame(width: 100, height: 100)
            }
            if (showImagePicker) {
                ImagePicker(isShown: $showImagePicker, image: $image)
            }
        }.navigationBarTitle("Image Picker")
    }

}

struct ImagePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
