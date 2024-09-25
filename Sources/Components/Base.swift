import Foundation
import Ignite

func base(context: PublishingContext, language: LanguageType ) ->  Group {
    let model = context.decode(resource: "\(language.rawValue).json", as: KanagawaSwiftModel.self)
    return Group {
        if let model {
            NavBar(model: model, language: language)
            Carousel {
                Slide(background: "/images/photos/kanagawa.jpeg")
                Slide(background: "/images/photos/yokohama_sea.jpeg")
                Slide(background: "/images/photos/castle.jpeg")
                Slide(background: "/images/photos/matcha.jpeg")
                Slide(background: "/images/photos/train.jpeg")
                Slide(background: "/images/photos/yokohama_night.jpeg")
                Slide(background: "/images/photos/enoshima_sunset.jpeg")
                Slide(background: "/images/photos/yokohama_sea.jpeg")
                Slide(background: "/images/photos/ashinoko.jpeg")
            }
            .carouselStyle(.crossfade)
            Spacer()
                .frame(height: 32)
            Text(model.home.title)
                .font(.title2)
            Divider()
            Text(model.home.description)
                .font(.title4)
            Divider()
            OrganizerListComponent(navbar: model.navBar)
        }
    }
    .position(.stickyTop)
    .padding(32)
    .margin()
}
