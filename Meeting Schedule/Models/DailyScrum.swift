//
//  DailyScrum.swift
//  Meeting Schedule
//
//  Created by apple on 29/10/2023.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "iOS Dev",
                   attendees: ["Saqib", "Adnan", "David"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "Mobile App Dev",
                   attendees: ["Saqib", "Adnan", "David"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Ai/ML",
                   attendees: ["Saqib", "Adnan", "David"],
                   lengthInMinutes: 5,
                   theme: .poppy),
        //DailyScrum(title: "Software Tester",
                   //attendees: ["Saqib", "Adnan", "David"],
                   //lengthInMinutes: 10,
                   //theme: .periwinkle)
    ]
}
