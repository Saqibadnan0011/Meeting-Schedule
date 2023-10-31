//
//  DailyScrum.swift
//  Meeting Schedule
//
//  Created by apple on 29/10/2023.
//

import SwiftUI

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee (id: UUID(), name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID, name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
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
