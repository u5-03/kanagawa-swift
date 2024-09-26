import Foundation
import Ignite

func base(context: PublishingContext, language: LanguageType ) ->  Group {
    let model = context.decode(resource: "\(language.rawValue).json", as: KanagawaSwiftModel.self)
    return Group {
        if let model {
            NavBar(model: model, language: language)
            PhotoCarouselComponent()
            Group {
                Spacer()
                    .frame(height: 32)
                Text(model.home.title)
                    .font(.title2)
                Divider()
                Text(model.home.description)
                    .font(.title4)
                Divider()
                EventsComponent(eventModel: model.event)
                Divider()
                OrganizerListComponent(navbar: model.navBar)
                Divider()
                BlogsComponent(navbar: model.navBar)
                Divider()
                RegionSwiftComponent()
            }
            .padding(.medium)
        }
    }
}
