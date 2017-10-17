//
//  ViewController.swift
//  ahorcado
//
//  Created by CETYS on 17/10/17.
//  Copyright © 2017 CETYS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var palabraOculta1 = "PASTAR" as NSString;
    var letra : String = "";
    
    
    @IBOutlet var palabraOculta: UILabel!
    
    
    
    
    @IBAction func letraPulsada(_ sender: UIButton) {
        
        let letra = sender.currentTitle
        let acierto = 0
        let LabelPalabraOculta = palabraOculta.text! as NSString

        
        for i in 0...palabraOculta1.length-1{
            let rango = NSMakeRange(i, 1)
            let rango1 = NSMakeRange(1, 1)
            
            if(letra == palabraOculta1.substring(with: rango) ){
                
                
                LabelPalabraOculta.replacingCharacters(in: rango1, with: "S")
                
                //print("rango1 : ",  rango1 )
                
                
            }
        }


    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

