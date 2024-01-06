//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Mansi Nerkar on 8/15/23.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK - PROPERTIES
    var labelText: String
    var lableImage: String
    
    //MARK- BODY

    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
                Spacer()
            Image(systemName: lableImage)
        }
    }
}
//MARK - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", lableImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
