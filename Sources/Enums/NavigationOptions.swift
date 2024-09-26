import Foundation
import Ignite

enum NavigationOptions: String, CaseIterable {
    case connpass
    case staff
    case blog
    case regionSwift

    func title(model: KanagawaSwiftModel) -> String {
        switch self {
            case .staff: model.navBar.organizer
            case .connpass: "Connpass"
            case .blog: "Blog"
            case .regionSwift: "Region.swift"
        }
    }

    func link(model: KanagawaSwiftModel) -> Link {
        switch self {
            case .staff, .blog, .regionSwift:
            Link(target: "#\(rawValue)") {
                Text(title(model: model))
                    .margin(.none)
                    .foregroundStyle(.primaryColor)
            }
            case .connpass: Link(target: "https://kanagawaswift.connpass.com") {
                Text(title(model: model))
                    .margin(.none)
                    .foregroundStyle(.primaryColor)
            }
        }
    }
}