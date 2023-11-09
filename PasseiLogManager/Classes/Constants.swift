//
//  File.swift
//
//
//  Created by Vagner Oliveira on 05/09/23.
//

import Foundation

class Constants {
    
    private static var path = "/tmp/"
    
    static var PATH_LOG_DEBUG:String { "\(path)\(productName).txt" }
    
    static private func getBundleIdentifier() -> String? {
        let bundleIdentifier = Bundle.main.bundleIdentifier
        return bundleIdentifier;
    }

    static private var productName:String {
        let bundle = Bundle.main
        let info = bundle.infoDictionary;
        let prodName = ((info?["CFBundleName"] as? String) ?? "passei_debug").replacingOccurrences(of: " ", with: "")
        return prodName;
    }
}
