//
//  ListItemView.swift
//  Listas
//
//  Created by Gonçalo Feliciano on 22/07/2024.
//

import SwiftUI

struct ListItemView: View {
    var contacto:Contacto
    var body: some View {
        Text(contacto.nome)
            .bold()
        
    }
}

#Preview {
    ListItemView(contacto: Contacto(nome: "Gonçalo"))
}
