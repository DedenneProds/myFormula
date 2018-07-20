//
//  Formula array saver thing idk.swift
//  Formulaes
//
//  Created by Michael K Miyajima on 7/2/17.
//  Copyright © 2017 Michael Miyajima. All rights reserved.
//

import Foundation
//String into usable formula
func StringtoFormula(Formula:String,formulaname:String) ->Formulae{
    //want to put string into formula form, with ,s between formula and inputs
    var charsinformula = Formula
    var inputs1:[String]=[]
    var outputs1:[String]=[]
    var formulastring:String=""
    let letters = ["A","B","C","D","F","G","H","I","J","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","f","g","h","i","j","k","l","m","n","o","q","r","s","t","u","v","w","x","y","z"]
    let digits = CharacterSet.decimalDigits
    let greekletters = CharacterSet.init(charactersIn:"ΑαΒβΓγΔδΕεϜϝΖζΗηΘθΙιΚκΛλΜμΝνΞξΟοΠπΡρΣσςΤτΥυΦφΧχΨψΩω")
    let sqrt = CharacterSet.init(charactersIn:"√")
    var thing = ""
    var letterCount = 0
    var digitCount = 0
    var char = false
    var greekCount = 0
    //finalString has variables replaced with japanese letters with numbers for lolsははははは
    var beforeequal = true
    var finalString = Array(charsinformula.characters)
    var finalString1 = Array(charsinformula.characters)
    var indexforabovestring = 0
    for uni in charsinformula.unicodeScalars {
        if(beforeequal == true){
            if letters.contains(String(uni)) {
                if uni == "p"{
                    formulastring+="p"
                    
                }
                else{
                letterCount += 1
                var strofcharatindex = String(finalString[indexforabovestring])
                inputs1.append(strofcharatindex)
                    formulastring+="い"}
            }
            else if digits.contains(uni) {
                digitCount += 1
                formulastring+=String(finalString[indexforabovestring])
            }
            else if greekletters.contains(uni) {
                greekCount += 1
                formulastring+=String(finalString[indexforabovestring])
            }
            else if sqrt.contains(uni){
                formulastring+=String(finalString[indexforabovestring])
            }
            else if String(finalString[indexforabovestring]) == "="{
                beforeequal = false
                formulastring+="="
            }
            else {
                formulastring+=String(finalString[indexforabovestring])
            }
            
        }
        else{
            formulastring+="お"
            outputs1.append(String(finalString[indexforabovestring]))
            thing = String(finalString[indexforabovestring])
        }
        indexforabovestring+=1
        
    }
    print(Formula+" is "+formulastring)
    let formula = Formulae(inputs:inputs1, formula:formulastring, name:formulaname)
    formula.output = thing
    formula.outputlist = outputs1
    return formula
}
