import Foundation
import Ignite

struct Jp: StaticPage {
    var title = "Kanagawa.swift"

    func body(context: PublishingContext) -> [BlockElement] {
        base(context: context, language: .japanese)
    }
}