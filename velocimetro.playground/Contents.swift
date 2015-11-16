//: Playground - noun: a place where people can play

import UIKit

//enumeracion Velocidades
enum Velocidades:Int{
    case apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
       self = velocidadInicial
    }
}
// clase Auto
class Auto{
    var velocidad : Velocidades
    
    init(){
        let aux = Velocidades.apagado
        self.velocidad = Velocidades(velocidadInicial: aux);
    }
    
    func cambioDeVelocidad() ->(actual : Int, velocidadEnCadena : String){
        var act: Int = 0
        var cadena : String = ""
        
        switch self.velocidad {
        case .apagado:
            act = velocidad.rawValue
            cadena = "Apagado"
            self.velocidad = Velocidades.velocidadBaja;
            
        case .velocidadBaja:
            
            act = velocidad.rawValue
            cadena = "velocidadBaja"
            self.velocidad = Velocidades.velocidadMedia
            
        case .velocidadMedia:
            
            act = velocidad.rawValue
            cadena = "velocidadMedia"
            self.velocidad = Velocidades.velocidadAlta
            
        case .velocidadAlta:
            
            act = velocidad.rawValue
            cadena = "velocidadAlta"
            self.velocidad = Velocidades.velocidadMedia
        }
        return (actual : act,velocidadEnCadena : cadena)
        
    }
}
// pruebas de la clase

let coche = Auto()

for i in 1...20{
    var result = coche.cambioDeVelocidad()
    print("\(i). \(result.actual), \(result.velocidadEnCadena).\n\n")
}
