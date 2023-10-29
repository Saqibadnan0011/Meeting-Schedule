//
//  DisplayView.swift
//  Meeting Schedule
//
//  Created by apple on 30/10/2023.
//

import SwiftUI

struct DisplayView: View {
    let scrum : [DailyScrum]
    
    var body: some View {
        List(scrum) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView(scrum: DailyScrum.sampleData)
    }
}
