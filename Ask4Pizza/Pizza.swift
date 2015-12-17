//
//  Pizza.swift
//  Ask4Pizza
//
// Created by Alexandro Barron  on 09/12/15.
//  Copyright © 2015 Auto Technology Designs. All rights reserved.
//

import UIKit

class Pizza {
  
  var tamano:String?
  var masa:String?
  var queso:String?
  var ingredientes:[String]?
  
  init(tamano: String, masa: String,queso: String,ingredientes:[String]) {
    self.tamano = tamano
    self.masa = masa
    self.queso = queso
    self.ingredientes = ingredientes
  }
}
