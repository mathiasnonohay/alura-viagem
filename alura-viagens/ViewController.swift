//
//  ViewController.swift
//  alura-viagens
//
//  Created by Mathias Almeida Nonohay on 12/29/20.
//  Copyright © 2020 Mathias Almeida Nonohay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - IBOutlet
    
    @IBOutlet weak var tabelaViagens: UITableView!
    
    @IBOutlet weak var viewHoteis: UIView!
    
    @IBOutlet weak var viewPacotes: UIView!
    
    // MARK: - Atributos
    
    let listaViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    
    // MARK: - Métodos
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
        self.viewPacotes.layer.cornerRadius = 10
        self.viewHoteis.layer.cornerRadius = 10
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let viagemAtual = listaViagens[indexPath.row]
        
        cell.textLabel?.text = viagemAtual.titulo
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }

}

