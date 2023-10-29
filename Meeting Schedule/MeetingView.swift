//
//  ContentView.swift
//  Meeting Schedule
//
//  Created by apple on 29/10/2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            VStack {
                ProgressView(value: 5, total: 15)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Seconds Elapsed")
                            .font(.caption)
                        Label("300", systemImage: "hourglass.tophalf.fill")
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("Seconds Remaining")
                            .font(.caption)
                        Label("600", systemImage: "hourglass.bottomhalf.fill")
                    }
                }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("time remaining")
                .accessibilityValue("10 minutes")
                Circle()
                    .strokeBorder(lineWidth: 24)
                HStack {
                    Text("Speaker 1 of 3!")
                    Spacer()
                    Button(action: {}) {
                        Label("", systemImage: "forward.fill")
                    }
                    .accessibilityLabel("Next speaker")
                }
            }
            .padding()
        }
    }
    
    struct MeetingView_Previews: PreviewProvider {
        static var previews: some View {
            MeetingView()
        }
    }
}
