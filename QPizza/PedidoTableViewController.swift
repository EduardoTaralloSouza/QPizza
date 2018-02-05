//
//  PedidoTableViewController.swift
//  QPizza
//
//  Created by Swift on 19/01/2018.
//  Copyright © 2018 Eduardo. All rights reserved.
//

import UIKit

var objetoDeAcessoTotalVC : TotalViewController?

class PedidoTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
    }

    // MARK: - Métodos de UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayTotal.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)

        cell.textLabel?.text = arrayTotal[indexPath.row].nome
        cell.detailTextLabel?.text = "R$ \(arrayTotal[indexPath.row].preco)"
        
        return cell
    }

    // Método que define se as celulas podem ou não ser editadas
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
      
    
        return true
    }
    
    // Método disparado quando um comando de edição da célula é executado
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            arrayTotal.remove(at: indexPath.row)
            arraySoma.remove(at: indexPath.row)
           
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            objetoDeAcessoTotalVC?.labelTotal.text = "R$ \(somarArray(arrayFloat: arraySoma))"
            
        }
    }


   
}
