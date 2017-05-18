//
//  ViewController.swift
//  Calculadora
//
//  Created by Othon M N Batista on 17/05/17.
//  Copyright © 2017 Othon M N Batista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var  usuarioEstaNoMeioDoNumero = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digito = sender.currentTitle!
        
        //print ("\(digito) foi tocado")
        
        if (usuarioEstaNoMeioDoNumero) {
        
            let textoAtualmenteNoDisplay = display.text!
            
            display.text = textoAtualmenteNoDisplay + digito
            
        } else {
            
            display!.text = digito
            
            usuarioEstaNoMeioDoNumero = true
        }
        

    }
    
    var valorDisplay : Double {
        get {
            return Double (display.text!)!
        }
        
        set {
            display.text = String (newValue)
        }
    }
    

    @IBAction func realizaOperacao(_ sender: UIButton) {
        
        usuarioEstaNoMeioDoNumero = false
        
        if let simboloMatematico = sender.currentTitle {
            switch (simboloMatematico) {
            case "PI" :
                valorDisplay = Double.pi
            case "√" :
                valorDisplay = sqrt (valorDisplay)
                
            default : break
            }
        }
        
        
    }
}

