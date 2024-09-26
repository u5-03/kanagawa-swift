import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = KanagawaSwiftSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct KanagawaSwiftSite: Site {
    var name = "Kanagawa.swift"
    var url = URL(string: "https://u5-03.github.io/kanagawa-swift/")!
    var titleSuffix = " – Swift Region Events in Kanagawa"
    var builtInIconsEnabled = true
    var pageWidth = 12
    var favicon = URL(string: "/images/favicon.png")
    var author = "Kanagawa.swift organization"

    var homePage = Jp()
    var theme = MyTheme()
    var pages: [any StaticPage] {
        Jp()
        En()
    }
}
