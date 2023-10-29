//
//  TrailingIconLabelStyle.swift
//  Meeting Schedule
//
//  Created by apple on 30/10/2023.
//

import SwiftUI

struct TrailingIconLableStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLableStyle {
    static var trailingIcon: Self { Self() }
}
