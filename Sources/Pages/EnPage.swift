import Foundation
import Ignite

struct En: StaticPage {
    var title =  "Kanagawa.swift"

    func body(context: PublishingContext) -> [BlockElement] {
        base(context: context, language: .english)
    }
}