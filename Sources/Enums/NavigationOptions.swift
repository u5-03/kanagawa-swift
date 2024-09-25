import Foundation
import Ignite

enum NavigationOptions: String, CaseIterable {
    case connpass
    case staff

    func title(model: KanagawaSwiftModel) -> String {
        switch self {
            case .staff: model.navBar.organizer
            case .connpass: "Connpass"
        }
    }

    func link(model: KanagawaSwiftModel) -> Link {
        switch self {
            case .staff: Link(target: "#\(rawValue)") {
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