//
//  ProdutoViewController.swift
//  QPizza
//
//  Created by Swift on 19/01/2018.
//  Copyright © 2018 Eduardo. All rights reserved.
//

import UIKit

class ProdutoViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var imagemProduto: UIImageView!
    @IBOutlet weak var descricaoProduto: UITextView!
    @IBOutlet weak var precoProduto: UILabel!
    
    
    //Mark: - Métodos de ViewCicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = info.nome
        imagemProduto.image = info.imagem
        descricaoProduto.text = info.descricao
        precoProduto.text = "\(info.preco)"

    }

    
    //MARK: - Actions
    
    @IBAction func adicionarProduto(_ sender: UIButton) {
        
        arrayTotal.append(info)
        arraySoma.append(info.preco)
        
        
        let alerta = UIAlertController(title: "Produto Adicionado ao Pedido", message: "", preferredStyle: .alert)
        
        let acaoOk = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alerta.addAction(acaoOk)
        
        present(alerta, animated: true, completion: nil)
        
    }
    
 

}













