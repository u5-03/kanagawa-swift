import Foundation
import Ignite

struct BlogsComponent: Component {
    let navbar: NavBarModel

    func body(context: PublishingContext) -> [any PageElement] {
        Text("Blogs")
            .font(.title2)
            .id(NavigationOptions.blog.rawValue)
        Text("No Posts!")
    }
}
