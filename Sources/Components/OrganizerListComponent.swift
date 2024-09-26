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
                Group() {
                    Link(target: member.link.absoluteString) {
                        Image(member.imageFilePath)
                            .resizable()
                            .aspectRatio(1)
                    }
                    Link(target: member.link.absoluteString) {
                        Text("@\(member.name)")
                            .font(.title5)
                            .margin(.none)
                            .foregroundStyle(.primaryColor)
                    }
                }
                .width(2)
                .horizontalAlignment(.center)
                .margin(.bottom, 12)
            }
        }
    }
}
