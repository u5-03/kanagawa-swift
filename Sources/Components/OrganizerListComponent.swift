import Foundation
import Ignite

struct OrganizerListComponent: Component {
    let navbar: NavBarModel

    func body(context: PublishingContext) -> [any PageElement] {
        Text(navbar.organizer)
            .font(.title2)
            .id(NavigationOptions.staff.rawValue)
        Section {
            for member in OrganizerList.members {
                Text() {
                    Link(target: member.link.absoluteString) {
                        Image(member.imageFilePath)
                            .resizable()
                            .width(2)
                            .aspectRatio(1)
                            .margin(.bottom)
                        Text("@\(member.name)")
                            .font(.title5)
                            .margin(.none)
                            .foregroundStyle(.primaryColor)
                            .position(Position.stickyTop)
                    }
                }
            }
        }
    }
}
