//Lista TO-DO Lista

//adicionar tarefa 
func adicionarTarefa( _ nova_lista : [String]) -> [String] {
    
    //cria uma variavel que possa ser editada
    var new_list = nova_lista
    
    //criar a tarefa
    print("Entre com a nova tarefa")
    let nova_tarefa = readLine()!
    
    //adicionar a tarefa
    new_list.append(nova_tarefa)
    
    return new_list
}


//remover elementos 
func removerElementos(_ r_elem: [String]) -> [String] {
    
    var removido = r_elem
    
    visualizar_tarefas(removido)
    
    print("Entre com indice a ser removido:")
    let index_removido = Int(readLine()!)!
    
    removido.remove(at: index_removido)
    
    return removido
}

func visualizar_tarefas(_ lista:[String]) {
    
    for (index, tarefa) in lista.enumerated() {
        
        print("\(index). \(tarefa)")
    }
}

func alterarTarefa(_ lista:[String]) -> [String] {
    
    var alt_tarefa = lista
    
    visualizar_tarefas(lista)
    
    print("Qual indice da tarefa a ser alterada?")
    let indice = Int(readLine()!)!
    
    print("Altere a tarefa :")
    alt_tarefa[indice] = readLine()!
    
    return alt_tarefa
}

func mudarPrioridade(_ Lista:[String]) -> [String] {
    
    var lista = Lista
    
    visualizar_tarefas(lista)
    
    print("Indice que deseja alterar ?")
    let indice = Int(readLine()!)!
    
    print("Posicao a ser colocada: ")
    let posicao = Int(readLine()!)!
    
    let x = lista[indice] 
    let y = lista[posicao]
    
    lista[posicao] = x
    lista[indice] = y
    
    return lista
}

//Programa Principal

//criando lista vazia 
var lista : [String] = []
print("Lista Original: \(lista) \n")

var opcao = 0 

repeat{
    
    print("Menu : \n 1.Adicionar Tarefa \n 2.Remover Tarefa \n 3.Visualizar Tarefas \n 4.Alterar Tarefa \n 5.Mudar Posição")
    print("Entre com uma opção de 1 a 5") 
    opcao = Int(readLine()!)!
    
    if opcao == 1 {
        
        lista = adicionarTarefa(lista)
        print("Lista com elementos adicionados: \(lista) \n ")
        
    } else if opcao == 2 {
    
        lista = removerElementos(lista)
        print("Lista Atualizada: \(lista) \n")
        
    } else if opcao == 3 {
        
        visualizar_tarefas(lista)
    
    } else if opcao == 4 {
    
        lista = alterarTarefa(lista)
        print("Lista Alterada: \(lista) \n")
    
    } else if opcao == 5 {
        
        lista = mudarPrioridade(lista)
        print(lista)
        
    } else {
    
        if opcao == 6 {
            print("Finalizando programa")
        }
        else {
            print("Entre opcao valida! \n")
        }
        
    }
    
}while((opcao >= 0 || opcao < 7) && opcao != 6)

 


