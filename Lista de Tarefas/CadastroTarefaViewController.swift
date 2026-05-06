//
//  CadastroTarefaViewController.swift
//  Lista de Tarefas
//
//  Created by Ytallo on 12/07/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {

    @IBOutlet weak var tarefaCampo: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tarefaCampo.layer.cornerRadius = 10
        tarefaCampo.layer.masksToBounds = true
    }

    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if let textoDigitado = tarefaCampo.text, !textoDigitado.isEmpty{
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = ""
            
        }
    }

}
