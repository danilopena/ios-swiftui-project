//
//  CharacterViewModel.swift
//  ios-swiftui-project
//
//  Created by Danilo Pena on 27/04/20.
//  Copyright © 2020 Danilo Pena. All rights reserved.
//

import UIKit
import SwiftUI

class CharacterViewModel {
    let networkLayer: NetworkLayer
    let viewProtocol: CharacterListProtocol
    
    init(viewProtocol: CharacterListProtocol, networkLayer: NetworkLayer = NetworkLayer()) {
        self.viewProtocol = viewProtocol
        self.networkLayer = networkLayer
    }
    
    func getCharacters() {
        let successHandler: (WrapperCharacters) -> Void = { (wrapper) in
            if let chars = wrapper.results {
                self.viewProtocol.fetchedChars(chars: chars)
            } else {
                self.viewProtocol.fetchedChars(chars: [CharacterRickAndMorty]())
            }
        }
        let errorHandler: (String) -> Void = { (error) in
            print(error)
//            self.view?.displayError(error: error)
        }

        networkLayer.get(urlString: "https://rickandmortyapi.com/api/character/",
                         successHandler: successHandler,
                         errorHandler: errorHandler)
    }
}
