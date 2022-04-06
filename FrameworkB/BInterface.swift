//
//  BInterface.swift
//  FrameworkB
//
//  Created by Yusuf Sobh on 4/6/22.
//

import Foundation
import Core

@objcMembers
public class BInterface: NSObject {
    public static func callMethod() {
        CoreInterface.callMethod()
        print("B")
    }
}
