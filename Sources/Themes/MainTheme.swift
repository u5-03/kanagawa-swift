import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context) {
                MetaTag(name: "og:image", content: "https://u5-03.github.io/kanagawa-swift/images/regions/kanagawa.png")
                MetaTag(name: "twitter:title", content: "Kanagawa.swift")
                MetaTag(name: "twitter:image", content: "https://u5-03.github.io/kanagawa-swift/images/regions/kanagawa.png")
            }

            Body {
                page.body

                IgniteFooter()
            }
            .style("background-color: \(ColorAssets.background.rawValue)")
            .padding(.top, 80)
            .padding(.horizontal, 24)
        }
    }
}
