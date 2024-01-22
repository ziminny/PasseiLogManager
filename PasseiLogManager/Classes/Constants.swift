//
//  File.swift
//
//
//  Created by Vagner Oliveira on 05/09/23.
//

import Foundation

/// Contém constantes utilizadas no modulo PasseiLogManager.
class Constants {
    
    /// Caminho base para arquivos de log.
    private static var path = "/tmp/"
    
    /// Caminho completo para o arquivo de log de depuração.
    ///
    /// O caminho é construído usando o diretório temporário (`path`) e o nome do produto (`productName`).
    static internal var PATH_LOG_DEBUG: String { "\(path)\(productName).txt" }
    
    /// Obtém o identificador de pacote da aplicação.
    ///
    /// - Returns: O identificador de pacote da aplicação, ou `nil` se não estiver disponível.
    static private func getBundleIdentifier() -> String? {
        let bundleIdentifier = Bundle.main.bundleIdentifier
        return bundleIdentifier
    }

    /// Obtém o nome do produto da aplicação, removendo espaços em branco.
    ///
    /// - Returns: O nome do produto da aplicação.
    static private var productName: String {
        let bundle = Bundle.main
        let info = bundle.infoDictionary
        let prodName = ((info?["CFBundleName"] as? String) ?? "passei_debug").replacingOccurrences(of: " ", with: "")
        return prodName
    }
}

