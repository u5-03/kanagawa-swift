import Foundation

enum EventList {
    static let events: [Event] = [
        Event(name: "Kanagawa.swift #1", link: URL(string: "https://connpass.com/event/332163")!),
    ]

    struct Event {
        let name: String
        let link: URL
    }
}