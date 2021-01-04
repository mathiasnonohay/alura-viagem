//
//  PacoteViagem.swift
//  alura-viagens
//
//  Created by Mathias Almeida Nonohay on 1/3/21.
//  Copyright © 2021 Mathias Almeida Nonohay. All rights reserved.
//

import UIKit

class PacoteViagem: NSObject {

    // MARK: - Atributos
    
    let nomeDoHotel:String
    let descricao:String
    let dataViagem:String
    let viagem:Viagem
    
    // MARK: - Construtor
    
    init(nomeDoHotel:String, descricao:String, dataViagem:String, viagem:Viagem){
        self.nomeDoHotel = nomeDoHotel
        self.descricao = descricao
        self.dataViagem = dataViagem
        self.viagem = viagem
    }
    
}
