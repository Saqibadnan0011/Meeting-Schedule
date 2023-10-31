//
//  DisplayView.swift
//  Meeting Schedule
//
//  Created by apple on 30/10/2023.
//

import SwiftUI

struct DisplayView: View {
    let scrums : [DailyScrum]
    
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView(scrums: DailyScrum.sampleData)
    }
}
