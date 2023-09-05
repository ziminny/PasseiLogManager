//
//  File.swift
//  
//
//  Created by Vagner Oliveira on 05/09/23.
//

import Foundation
import OSLog

@available(iOS 13.4, *)
public class LogManager {
    

    public static func dispachLog(_ message:String) {
        
        let productName = LogManager.getProductName;
        
        
        #if DEBUG
        
        var fileHandle = FileHandle(forReadingAtPath: Constants.PATH_LOG_DEBUG)
        
        if (fileHandle == nil) {
            let defaultManager = FileManager.default
            defaultManager.createFile(atPath: Constants.PATH_LOG_DEBUG, contents: nil)
           
            fileHandle = FileHandle(forWritingAtPath: Constants.PATH_LOG_DEBUG)
        }
        
        // Move o cursor para o final do arquivo
        let _ = try? fileHandle?.seekToEnd()
        
        let formatMessage = "\n\(message)";
        
        let data = formatMessage.data(using: .utf8)
        
        if let data {
            try? fileHandle?.write(contentsOf: data)
        }
        try? fileHandle?.close()
            
        #else
            let identifier = LogManager.getBundleIdentifier;
            let logger = os_log_create(identifier,productName);
            os_log(logger, "%{public}s", message);
        #endif
    }

     

    static private func getBundleIdentifier() -> String? {
        let bundleIdentifier = Bundle.main.bundleIdentifier
        return bundleIdentifier;
    }

    static private func getProductName() -> String? {
        let bundle = Bundle.main
        let info = bundle.infoDictionary;
        let prodName = info?["CFBundleName"] as? String
        return prodName;
    }
    
}
