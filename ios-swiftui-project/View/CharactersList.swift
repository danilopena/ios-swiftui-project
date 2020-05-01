//
//  ContentView.swift
//  ios-swiftui-project
//
//  Created by Danilo Pena on 24/04/20.
//  Copyright © 2020 Danilo Pena. All rights reserved.
//

import SwiftUI

protocol CharacterListProtocol {
    func fetchedChars(chars: [CharacterRickAndMorty])
}

struct CharactersList: View {
    @State var selection: Int? = nil
    @State var characters = [CharacterRickAndMorty]()
    
    var body: some View {
        NavigationView {
            List(characters) { char in
                HStack {
                    ForEach(0..<2) { _ in
                        CellCharacter()
                    }
                }
            }.onAppear(perform: loadData)
            .navigationBarItems(trailing:
                NavigationLink(destination: FilterScreen()) {
                    Text("Filter")
                    .foregroundColor(Colors.indigo)
                    .font(Font.system(size: 17, weight: .bold, design: .default))
                }
            )
            .navigationBarTitle("Characters")
            .padding(.bottom)
        }
    }
    
    func loadData() {
        CharacterViewModel(viewProtocol: self).getCharacters()
    }
}

extension CharactersList: CharacterListProtocol {
    func fetchedChars(chars: [CharacterRickAndMorty]) {
        characters = chars
    }
}

struct CharactersList_Previews: PreviewProvider {
    static var previews: some View {
        CharactersList()
    }
}
