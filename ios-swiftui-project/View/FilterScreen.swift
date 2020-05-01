//
//  FilterScreen.swift
//  ios-swiftui-project
//
//  Created by Danilo Pena on 25/04/20.
//  Copyright © 2020 Danilo Pena. All rights reserved.
//

import SwiftUI

struct FilterScreen: View {
    init() {
        //MARK: Disable selection.
        UITableView.appearance().allowsSelection = false
        UITableViewCell.appearance().selectionStyle = .none
        UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        List() {
            Section {
                CellRadio()
            }
            Section {
                CellRadio()
            }
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .buttonStyle(BorderlessButtonStyle())
        .navigationBarItems(trailing:
            Group {
                Button("APPLY", action: {
                
                }).foregroundColor(.white)
                .padding(12)
                    .font(Font.system(size: 13))
            }
            .frame(width: 65.0, height: 28.0)
            .background(Colors.indigo)
            .cornerRadius(14)
            
        )
        .navigationBarTitle("Filter", displayMode: .inline)
    }
}

struct FilterScreen_Previews: PreviewProvider {
    static var previews: some View {
        FilterScreen()
    }
}
