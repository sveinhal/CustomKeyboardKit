//
//  iOSViewVersion+iOS15AndAbove.swift.swift
//  
//
//  Created by Pascal Burlet on 28.06.23.
//

@_spi(Internals) import SwiftUIIntrospect
import UIKit

internal extension iOSViewVersion<TextFieldType, UITextField> {
    public static let v15AndAbove = Self(for: .v15AndAbove)
}

internal extension iOSViewVersion<TextEditorType, UITextView> {
    public static let v15AndAbove = Self(for: .v15AndAbove)
}


internal extension iOSVersion {
    public static let v15AndAbove = iOSVersion {
        if #available(iOS 15, *) {
            return true
        }
        return false
    }
}
