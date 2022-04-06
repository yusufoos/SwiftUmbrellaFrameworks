//
//  FinalInterface.swift
//  FinalFramework
//
//  Created by Yusuf Sobh on 4/6/22.
//

import Foundation
@_implementationOnly import FrameworkA
@_implementationOnly import FrameworkB

@objcMembers
public class FinalInterface: NSObject {
    public static func callMethod() {
        AInterface.callMethod()
        BInterface.callMethod()
    }
}
