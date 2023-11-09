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
    
    private static var filePath:String = Constants.PATH_LOG_DEBUG
    private static var fileManager:FileManager = .default
    public static func dispachLog(_ message:String) {
        
        #if targetEnvironment(simulator)
        
        if !fileManager.fileExists(atPath: filePath) {
            if fileManager.createFile(atPath: filePath, contents: nil, attributes: [FileAttributeKey.posixPermissions: 0o644]) {
                // Arquivo criado com sucesso
            }
        }

        if let fileHandle = FileHandle(forWritingAtPath: filePath) {
            let message = "\n\(message)"
            if let data = message.data(using: .utf8) {
                fileHandle.seekToEndOfFile()
                fileHandle.write(data)
                fileHandle.closeFile()
            }
        }
            
        #else
        os_log("%@", log: .customCategory, type: .info, message as CVarArg)
        #endif
    }
}

fileprivate extension OSLog {
    private static var subsystem:String = Bundle.main.bundleIdentifier!
    static let customCategory:OSLog = OSLog(subsystem: subsystem, category: "Passei-group")
}
