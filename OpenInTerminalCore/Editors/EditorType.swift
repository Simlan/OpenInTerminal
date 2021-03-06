//
//  EditorType.swift
//  OpenInTerminalCore
//
//  Created by Jianing Wang on 2019/4/21.
//  Copyright © 2019 Jianing Wang. All rights reserved.
//

import Foundation

public enum EditorType: String {
    
    case vscode = "VSCode"
    case atom = "Atom"
    case sublime = "Sublime"
    case vscodium = "VSCodium"
    
    public var fullName: String {
        switch self {
        case .vscode:
            return "Visual Studio Code"
        case .atom:
            return "Atom"
        case .sublime:
            return "Sublime Text"
        case .vscodium:
            return "VSCodium"
        }
    }
    
    public var bundleId: String {
        switch self {
        case .vscode:
            return "com.microsoft.VSCode"
        case .atom:
            return "com.github.atom"
        case .sublime:
            return "com.sublimetext.3"
        case .vscodium:
            return "com.visualstudio.code.oss"
        }
    }
    
    public func instance() -> Editor {
        switch self {
        case .vscode:
            return VSCodeApp()
        case .atom:
            return AtomApp()
        case .sublime:
            return SublimeApp()
        case .vscodium:
            return VSCodiumApp()
        }
    }
}
