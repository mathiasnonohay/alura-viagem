//
//  Viagem.swift
//  alura-viagens
//
//  Created by Mathias Almeida Nonohay on 12/29/20.
//  Copyright © 2020 Mathias Almeida Nonohay. All rights reserved.
//

import UIKit

class Viagem: NSObject {
    
    // MARK: - Atributos
    
    let titulo:String
    let quantidadeDeDias:Int
    let preco:String
    let caminhoDaImagem:String
    
    // MARK: - Init (Constructor)
    
    init(titulo:String, quantidadeDeDias:Int, preco:String, caminhoDaImagem:String) {
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.caminhoDaImagem = caminhoDaImagem
    }
    
}
