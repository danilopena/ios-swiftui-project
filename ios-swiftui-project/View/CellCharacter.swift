//
//  CellCharacter.swift
//  ios-swiftui-project
//
//  Created by Danilo Pena on 25/04/20.
//  Copyright © 2020 Danilo Pena. All rights reserved.
//

import SwiftUI

struct CellCharacter: View {
    
    var body: some View {
         VStack(alignment: .center) {
            Image("char-test")
                .resizable()
                .cornerRadius(10, corners: [.topLeft, .topRight])
                .scaledToFit()
            VStack(alignment: .leading) {
                Text("Teste").foregroundColor(.gray)
                Text("Teste 2").lineLimit(3)
            }
        }.overlay(
            RoundedRectangle(cornerRadius: 10.0)
            .stroke(lineWidth: 1.0)
            .foregroundColor(.gray)
        )
    }
}
