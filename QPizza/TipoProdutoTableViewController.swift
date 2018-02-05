//
//  TipoProdutoTableViewController.swift
//  QPizza
//
//  Created by Swift on 19/01/2018.
//  Copyright © 2018 Eduardo. All rights reserved.
//

import UIKit

class TipoProdutoTableViewController: UITableViewController {

    //MARK: - Métodos de ViewCicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Tirar as linhas não utilizadas de uma table dinâmica
        tableView.tableFooterView = UIView()
        
        
        if celulaTipoSelecionada == 0 {
            
            self.title = "Pizzas"
            
        } else if celulaTipoSelecionada == 1 {
            
            self.title = "Sobremesas"
            
        } else {
            
            self.title = "Bebidas"
        }

    }


    //MARK: - Métodos de UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if celulaTipoSelecionada == 0 {
            
            return pizzasObj.arrayPizzas.count
            
        } else if celulaTipoSelecionada == 1 {
            
            return sobremesasObj.arraySobremesas.count
            
        } else {
            
            return bebidasObj.arrayBebidas.count
            
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        
        if celulaTipoSelecionada == 0 {
            
            info = pizzasObj.arrayPizzas[indexPath.row]
            
            cell.textLabel?.text = info.nome
            cell.detailTextLabel?.text = "R$ \(info.preco)"
            
        } else if celulaTipoSelecionada == 1 {
            
            info = sobremesasObj.arraySobremesas[indexPath.row]
            
            cell.textLabel?.text = info.nome
            cell.detailTextLabel?.text = "R$ \(info.preco)"
            
        } else {
            
            info = bebidasObj.arrayBebidas[indexPath.row]
            cell.textLabel?.text = info.nome
            cell.detailTextLabel?.text = "R$ \(info.preco)"
            
        }

        return cell
    }
 

    //Métodos de UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if celulaTipoSelecionada == 0 {
            
            info = pizzasObj.arrayPizzas[indexPath.row]
            
        } else if celulaTipoSelecionada == 1 {
            
            info = sobremesasObj.arraySobremesas[indexPath.row]
            
        } else {
            
            info = bebidasObj.arrayBebidas[indexPath.row]
            
        }

        
        performSegue(withIdentifier: "irProduto", sender: nil)
    }

}
