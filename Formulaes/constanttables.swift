//
//  constanttables.swift
//  Formulaes
//
//  Created by Michael K Miyajima on 10/12/17.
//  Copyright © 2017 Michael Miyajima. All rights reserved.
//

import Foundation
//final names are commented
var reset = false
var nameofformulaes = "pleaewkotherwieyouregonnaembaras"
var nameofhistories = "andyillbedestoyedgg"
var dolfortrig = true
func matomta(_ equation:String)->String{
    var final = ""
    var lettersinarow = false
    let letters = ["A","B","C","D","E","F","G","H","I","J","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","f","g","h","i","j","k","l","m","n","o","q","r","s","t","u","v","w","x","y","z"]
    let array = Array(equation)
    for char in array{
        if letters.contains(String(char)){
            if lettersinarow == true{
                final += "*"
                final += String(char)
            }
            else{
                final += String(char)
                lettersinarow = true
            }
            
        }
        else{
            lettersinarow = false
            final += String(char)
        }
        
    }
    return final
}
