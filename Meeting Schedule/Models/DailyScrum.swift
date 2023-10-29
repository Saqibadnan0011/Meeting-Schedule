//
//  DailyScrum.swift
//  Meeting Schedule
//
//  Created by apple on 29/10/2023.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "iOS Dev",
                   attendees: ["Saqib", "Adnan", "David", "Ali", "Angel"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "Mobile App Dev",
                   attendees: ["Saqib", "Adnan", "David", "Mike"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Ai/ML",
                   attendees: ["Saqib", "Adnan", "David", "Jay"],
                   lengthInMinutes: 5,
                   theme: .poppy),
        DailyScrum(title: "Software Tester",
                   attendees: ["Saqib", "Adnan", "David" ],
                   lengthInMinutes: 10,
                   theme: .periwinkle)
    ]
}
