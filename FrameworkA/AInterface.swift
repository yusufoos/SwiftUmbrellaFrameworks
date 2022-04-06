//
//  InterfaceA.swift
//  FrameworkA
//
//  Created by Yusuf Sobh on 4/6/22.
//

import Foundation
import Core

@objcMembers
public class AInterface: NSObject {
    public static func callMethod() {
        CoreInterface.callMethod()
        print("A")
    }
}
