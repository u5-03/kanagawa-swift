import Foundation
import Ignite

struct NavBar: Component {
    let model: KanagawaSwiftModel
    let language: LanguageType

    func body(context: PublishingContext) -> [any PageElement] {
        NavigationBar(logo: logo) {
            for option in NavigationOptions.allCases {
                option.link(model: model)
            }
            Link(target: language.targetPage) {
                Text("\(language.flag) \(model.language)")
                    .margin(.none)
                    .foregroundStyle(.primaryColor)
            }
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.secondaryColor)
        .position(.fixedTop)
    }

    private var logo: any InlineElement {
        Text {
            Image("images/favicon.png")
                .resizable()
                .frame(width: 32, height: 32)
            Text(model.name)
                .fontWeight(.bold)
                .margin(.none)
                .font(.title4)
                .foregroundStyle(.primaryColor)
        }
    }
}
