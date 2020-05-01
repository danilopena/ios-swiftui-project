//
//  CellRadio.swift
//  ios-swiftui-project
//
//  Created by Danilo Pena on 27/04/20.
//  Copyright © 2020 Danilo Pena. All rights reserved.
//

import SwiftUI


struct CellRadio: View {
    @State var selectedRadio = false
    var body: some View {
        HStack {
            Button(action: {
                self.selectedRadio = !self.selectedRadio
            }) {
                self.selectedRadio ? Image("ic-radio-check").renderingMode(.original) : Image("ic-radio-empty").renderingMode(.original)
            }.frame(width: 50, height: 50, alignment: .leading)
            VStack(alignment: .leading) {
                Text("Teste")
                Text("Subline").foregroundColor(.gray)
            }
            NavigationLink(destination: Text("Teste")) {
                CharactersList()
            }
        }
    }
}

struct CellRadio_Previews: PreviewProvider {
    static var previews: some View {
        CellRadio()
    }
}
