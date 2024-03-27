//
//  ContentView.swift
//  propertyWrapper
//
//  Created by Jose on 27/3/24.
//

import SwiftUI

class MiClase : ObservableObject {
    @Published var nombre = "Pepe"
    @Published var edad = 47
}

struct ContentView: View {
    @State private var valor = 0
    @State private var seleccion:Int?
    @StateObject private var miObjeto = MiClase()
    
    
    var body: some View {
        NavigationView{
        VStack{
            
        Text("El valor es: \(valor)")
            Button("Suma 1"){
                valor += 1
            }
            Text("Mi nombre es \(miObjeto.nombre) y mi edad es \(miObjeto.edad)")
            
            Button("Modificar Objeto"){
                miObjeto.nombre = "Pepe Sorli"
                miObjeto.edad += 1
            }
            
            NavigationLink(destination: BindingVista(valor: $valor , miObjeto : miObjeto), tag: 1, selection: $seleccion){
                Button("Ir a otra Vista"){
                    seleccion = 1
                }
            }
        }.navigationTitle("ContentView")
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
