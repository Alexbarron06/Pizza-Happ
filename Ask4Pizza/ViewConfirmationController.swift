//
//  ViewConfirmationController.swift
//  Ask4Pizza
//
//  Created by Alexandro Barron  on 09/12/15.
//  Copyright © 2015 Auto Technology Designs. All rights reserved.
//

import UIKit

class ViewConfirmationController: UIViewController {
  
  var pizza = Pizza?()

  @IBOutlet weak var labelSeleccion: UILabel!

  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      if let pizzaSeleccion = pizza {
        var textoIngredientes:String = ""
        for ingredientes in pizzaSeleccion.ingredientes! {
          if (ingredientes != "Ninguno") {
             textoIngredientes += "\(ingredientes) , "
          }
        }
        labelSeleccion.text = "\(pizzaSeleccion.tamano!) , \(pizzaSeleccion.masa!) , \(pizzaSeleccion.queso!), \(textoIngredientes)"
      }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  @IBAction func btnEnviarCocina(sender: AnyObject) {
    self.performSegueWithIdentifier("enviarCocina", sender: nil)
    
    
  }
  @IBAction func btnCambiarIngredientes(sender: AnyObject) {
    self.dismissViewControllerAnimated(true, completion: nil)
    
  }


}
