import UIKit

class Produto {
    var nome : String = ""
    var descricao : String = ""
    var preco : Float = 0.00
    var imagem : UIImage? = nil
}

class Pizzas{
    
    var calabresa = Produto()
    var muzzarela = Produto()
    var quatroQueijos = Produto()
    var brigadeiro = Produto()
    var arrayPizzas = [Produto]()
    
    
    init() {
        
        //Init Calabresa
        calabresa.nome = "Calabresa"
        calabresa.descricao = "Deliciosa linguiça Calabresa em fatias com cebola em rodelas e azeitonas pretas"
        calabresa.preco = 39.99
        calabresa.imagem = UIImage(named: "cala")
        
        //Init Muzzarela
        muzzarela.nome = "Muzzarela"
        muzzarela.descricao = "Queijo Muzzarela Original derretido, salpicado com oregano e azeitonas verdes"
        muzzarela.preco = 39.99
        muzzarela.imagem = UIImage(named: "muzza")
        
        //Init QuatroQ
        quatroQueijos.nome = "Quatro Queijos"
        quatroQueijos.descricao = "Quatro queijos especialmente selecionados e derretidos! Muzzarela, Gorgonzola, Provolone e Parmesão. Salpicados com oregamo e zeitonas verdes. "
        quatroQueijos.preco = 44.99
        quatroQueijos.imagem = UIImage(named: "quatro")
        
        brigadeiro.nome = "Brigadeiro"
        brigadeiro.descricao = "Deliciosa pizza doce com chocolate meio-amargo derretido, salpicado com granulado de chocolate ao leite"
        brigadeiro.preco = 44.99
        brigadeiro.imagem = UIImage(named: "brig")
        
        arrayPizzas = [calabresa, muzzarela, quatroQueijos, brigadeiro]
        
    }
    
}

class Sobremesa {
    
    var sundae = Produto()
    var bananaSplit = Produto()
    var churros = Produto()
    var arraySobremesas = [Produto]()
    
    init() {
        //Init Sundae
        sundae.nome = "Sundae de Chocolate"
        sundae.descricao = "Delicioso Sundae de chocolate"
        sundae.preco = 12.99
        sundae.imagem = UIImage(named: "sundae")
        
        //Init banana
        bananaSplit.nome = "Banana Split"
        bananaSplit.descricao = "Banana Split com sorvetes e confeitos a escolha do cliente"
        bananaSplit.preco = 20.99
        bananaSplit.imagem = UIImage(named: "banana")
        
        //Init churros
        churros.nome = "Churros Mexicanos"
        churros.descricao = "Deliciosos churros mexicanos com recheio quente para contrastre com bolas de sorverte de creme geladissimo!"
        churros.preco = 15.99
        churros.imagem = UIImage(named: "churros")
        
        arraySobremesas = [sundae, bananaSplit, churros]
        
    }
    
}

class Bebidas {
    
    var cervejaA = Produto()
    var sucoA = Produto()
    var refrigeranteA = Produto()
    var arrayBebidas = [Produto]()
    
    init() {
        //Init cervejaA
        cervejaA.nome = "CervejaXXX"
        cervejaA.descricao = "XXXxxx"
        cervejaA.preco = 8.99
        cervejaA.imagem = UIImage(named: "cerv")
        
        //Init sucoA
        sucoA.nome = "SucoYYY"
        sucoA.descricao = "YYYyyy"
        sucoA.preco = 7.99
        sucoA.imagem = UIImage(named: "suco")
        
        //Init refriA
        refrigeranteA.nome = "RefriZZZ"
        refrigeranteA.descricao = "ZZZzzz"
        refrigeranteA.preco = 10.99
        refrigeranteA.imagem = UIImage(named: "refri")
        
        arrayBebidas = [cervejaA, sucoA, refrigeranteA]
    }
}


//Propriedades Globais:
var info = Produto()
var pizzasObj = Pizzas()
var sobremesasObj = Sobremesa()
var bebidasObj = Bebidas()
var celulaTipoSelecionada = 0
var arrayTotal = [Produto]()
var arraySoma = [Float]()



//Métodos Globais
func somarArray(arrayFloat: [Float]) -> String {
    var numeroAux = 0
    var totalSoma : Float = 0.0
    
    while(numeroAux != arrayFloat.count) {
        totalSoma += arrayFloat [numeroAux]
        
        numeroAux += 1;
    }
    
    return "\(totalSoma)"
}

