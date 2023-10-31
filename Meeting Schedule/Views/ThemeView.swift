//
//  ThemeView.swift
//  Meeting Schedule
//
//  Created by apple on 31/10/2023.
//

import SwiftUI

struct ThemeView: View {
    
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .bubblegum)
    }
}
