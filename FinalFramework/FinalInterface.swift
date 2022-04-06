//
//  FinalInterface.swift
//  FinalFramework
//
//  Created by Yusuf Sobh on 4/6/22.
//

import Foundation

// Internal Modules must use @_implementationOnly so we they don't get exposed via the public swift interface and cause compiler errors
@_implementationOnly import FrameworkA
@_implementationOnly import FrameworkB

@objcMembers
public class FinalInterface: NSObject {
    public static func callMethod() {
        AInterface.callMethod()
        BInterface.callMethod()
    }
}
