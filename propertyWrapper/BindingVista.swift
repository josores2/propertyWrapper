//
//  BindingVista.swift
//  propertyWrapper
//
//  Created by Jose on 27/3/24.
//

import SwiftUI

struct BindingVista: View {
    @Binding var valor : Int
    @ObservedObject var miObjeto : MiClase
    
    var body: some View {
        VStack{
            Text("El valor es: \(valor)")
            Button("Suma 2"){
                valor += 2
            }
            Text("Me llamo \(miObjeto.nombre) y tengo \(miObjeto.edad)")
            Button("Actualiza Objeto 2"){
                miObjeto.edad += 2
            }
        }
    }
}

struct BindingVista_Previews: PreviewProvider {
    static var previews: some View {
        BindingVista(valor: .constant(5),miObjeto:MiClase())
    }
}
