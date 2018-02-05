//
//  CardapioTableViewController.swift
//  QPizza
//
//  Created by Swift on 19/01/2018.
//  Copyright © 2018 Eduardo. All rights reserved.
//

import UIKit

class CardapioTableViewController: UITableViewController {

    
    //MARK: - Métodos de ViewCicle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    //MARK: - Métodos de UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        celulaTipoSelecionada = indexPath.row
        
        //Método que dispara o segue com determinado ID
        performSegue(withIdentifier: "irTipo", sender: nil)
        // OBS.: Any - qualquer coisa dentro ou fora da swift  e  AnyObject - qualquer coisa dentro da swift
        
    }

}
