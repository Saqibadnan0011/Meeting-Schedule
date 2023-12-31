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
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                        //.listRowBackground(scrum.theme.mainColor)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Meeting")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                }
                .accessibilityLabel("New meeting")
            }
        }
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView(scrums: DailyScrum.sampleData)
    }
}
