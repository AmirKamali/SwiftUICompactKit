//
//  ImagePicker.swift
//  SwiftUICompatKit
//
//  Created by Amir on 27/9/19.
//  Copyright © 2019 Amir Kamali. All rights reserved.
//

import SwiftUI

public struct ImagePicker: UIViewControllerRepresentable {

    @Binding public var isShown: Bool
    @Binding public var image: Image?
    
    public init (isShown:Binding<Bool>, image:Binding<Image?>) {
        self._isShown = isShown
        self._image = image
    }

    
    public class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
        @Binding var isShown: Bool
        @Binding var image: Image?
        
        init(isShown: Binding<Bool>, image: Binding<Image?>) {
            _isShown = isShown
            _image = image
        }
        
        public func imagePickerController(_ picker: UIImagePickerController,
                                          didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            image = Image(uiImage: uiImage)
            isShown = false
        }
        
        public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            isShown = false
        }
        
    }
    
    public  func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image)
    }
    
    public  func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    public  func updateUIViewController(_ uiViewController: UIImagePickerController,
                                        context: UIViewControllerRepresentableContext<ImagePicker>) {
        
    }
    
}
