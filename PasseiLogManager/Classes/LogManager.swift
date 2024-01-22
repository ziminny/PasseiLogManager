//
//  File.swift
//
//
//  Created by Vagner Oliveira on 05/09/23.
//

import Foundation
import OSLog

@available(iOS 13.4, *)
/// Gerencia o registro de logs da aplicação.
public class LogManager {
    
    /// Caminho do arquivo de log de depuração.
    private static var filePath: String = Constants.PATH_LOG_DEBUG
    
    /// Gerenciador de arquivo padrão.
    private static var fileManager: FileManager = .default
    
    /// Registra uma mensagem no arquivo de log ou na console, dependendo do ambiente de execução.
    ///
    /// - Parameter message: A mensagem a ser registrada.
    public static func dispachLog(_ message: String) {
        
        #if targetEnvironment(simulator)
        
        // Se estiver no simulador, registra a mensagem em um arquivo de log no diretório temporário.
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
        // Se não estiver no simulador, usa o sistema de logs do iOS.
        os_log("%@", log: .customCategory, type: .info, message as CVarArg)
        #endif
    }
}

/// Extensão para definir uma categoria personalizada para os logs.
fileprivate extension OSLog {
    
    /// Subsistema utilizado para os logs.
    private static var subsystem: String = Bundle.main.bundleIdentifier!
    
    /// Categoria personalizada para os logs.
    static let customCategory: OSLog = OSLog(subsystem: subsystem, category: "Passei-group")
}

