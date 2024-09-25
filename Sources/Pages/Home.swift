import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Hello world!")
            .font(.title1)
        
                let welcomeMessage = """
        やあ （´・ω・｀)<br>
        ようこそ、Kanagawa.swiftへ。<br>
        このシングルトンはサービスだから、まず飲んで落ち着いて欲しい。<br>
        <br>
        うん、「また」なんだ。済まない。<br>
        仏の顔もって言うしね、謝って許してもらおうとも思っていない。<br>
        <br>
        でも、このサイトを見たとき、君は、きっと言葉では言い表せない「Swift」みたいなものを感じてくれたと思う。<br>
        殺伐とした世の中で、そういう気持ちを忘れないで欲しい<br>
        そう思って、このサイトを作ったんだ。<br>
        <br>
        じゃあ、注文を聞こうか。<br>
        """
        
        Text(welcomeMessage)
        
        Card {
            Text("This is important!")
                .font(.title3)
            Text("This is card body text. This is card body text. This is card body text. This is card body text. This is card body text.")
        } header: {
            "Header Example"
        } footer: {
            "Your footer goes here footer"
        }
    }
}
