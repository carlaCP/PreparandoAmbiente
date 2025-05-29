//Lista TO-DO LIST
//MOSTRAR MENU
//ADICIONAR TAREFA
//REMOVER TAREFA 

 //ter uma lista 
//fazer o append da lista 
//retornar a lista

func adicionarTarefa(_ nova_lista: [String]) -> [String]{

    var new_list = nova_lista
    
    //criar a Tarefa
    print("Entre com a nova tarefa")
    var nova_tarefa = readLine()!
    
    //fazer o append da lista
    new_list.append(nova_tarefa)
    
    return new_list
} 


//remover elementos

func removerElemento(_ r_elem: [String]) -> [String]{
    
    var removido = r_elem
    
    for i in 0...removido.count-1 {
        
        print( "\(i+1).\(removido[i+1]) ")
        
    }
    
    print("Entre com o indice a ser removido : ")
    var index_removido = Int(readLine()!)!
    
    removido.remove(at: index_removido)
    
    return removido
}

func mostrarLista (_ visualizar: [String]) -> [String] {
    
    let copia = visualizar
    
    return copia
}

//criando uma lista vazia 
// sera utilizada para adicionar elementos e remover 
var lista: [String] = []

print("Menu : \n 1.Adicionar Tarefa \n 2.Remover Tarefa \n 3.Visualizar Tarefas")
print("Entre com uma opção de 1 a 3") 

var opcao = 0

while (opcao >= 0 && opcao < 4){
    opcao = (Int(readLine()!)!)
    if opcao == 1 {
    
        lista = adicionarTarefa(lista)
        print(lista)
        
    } else if opcao == 2 {
    
        lista = removerElemento(lista)
        print(lista)
        
    } else if opcao == 3 {
        
        var visualizar_lista = mostrarLista(lista)
        print(visualizar_lista)
        
    } else {
        
        
    }
    
    
    print("Menu : \n 1.Adicionar Tarefa \n 2.Remover Tarefa \n 3.Visualizar Tarefa")
    print("Entre com uma opção de 1 a 3") 
}


 


