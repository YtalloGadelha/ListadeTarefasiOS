//
//  TarefaUserDefaults.swift
//  Lista de Tarefas
//
//  Created by Ytallo on 12/07/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func salvar(tarefa:String){
        
        //recuperar tarefas
        tarefas = listar()
        
        //salvar tarefas
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    func remover(indice: Int) {
        //recuperar tarefas já salvas
        tarefas = listar()
        
        //remover pelo indice
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    func listar() -> Array<String>{
        
       let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil{
            return dados as! Array<String>
        }else{
            return []
        }
    }
}
