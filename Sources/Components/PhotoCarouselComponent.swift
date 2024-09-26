import Foundation
import Ignite

struct PhotoCarouselComponent: Component {
    func body(context: PublishingContext) -> [any PageElement] {
        Carousel {
                // Slide(background: "/images/photos/kanagawa.jpg")
                // Slide(background: "/images/photos/daibutsu.jpg")
                // Slide(background: "/images/photos/chukagai.jpg")
                // Slide(background: "/images/photos/ashinoko.jpg")
                // Slide(background: "/images/photos/yokohama_sunset.jpg")
                // Slide(background: "/images/photos/matcha.jpg")
                // Slide(background: "/images/photos/enoden.jpg")
                // Slide(background: "/images/photos/shonan.jpg")
                // Slide(background: "/images/photos/ooyama.jpg")
                // Slide(background: "/images/photos/enoshima_sunset.jpg")
                // Slide(background: "/images/photos/temple.jpg")
                // Slide(background: "/images/photos/yokohama_noon.jpg")

                slide(imagePath: "/images/photos/kanagawa.jpg")
                slide(imagePath: "/images/photos/daibutsu.jpg")
                slide(imagePath: "/images/photos/chukagai.jpg")
                slide(imagePath: "/images/photos/ashinoko.jpg")
                slide(imagePath: "/images/photos/yokohama_sunset.jpg")
                slide(imagePath: "/images/photos/enoden.jpg")
                slide(imagePath: "/images/photos/battleship.jpg")
                slide(imagePath: "/images/photos/shonan.jpg")
                slide(imagePath: "/images/photos/ooyama.jpg")
                slide(imagePath: "/images/photos/enoshima_sunset.jpg")
                slide(imagePath: "/images/photos/temple.jpg")
                slide(imagePath: "/images/photos/yokohama_noon.jpg")
            }
            .carouselStyle(.crossfade)
            .padding(.top, 60)
    }
}

private func slide(imagePath: String) -> Slide {
    Slide(background: imagePath)
}
