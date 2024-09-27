import Foundation

enum RegionSwiftList {
    static let regions: [RegionSwift] = [
        RegionSwift(name: "Hakata.swift", imageFilePath: "/images/regions/hakataswift.png", link: URL(string: "https://hakata-swift.connpass.com")!),
        RegionSwift(name: "Kamiyama.swift", imageFilePath: "/images/regions/kamiyamaswift.png", link: URL(string: "https://kamiyama-swift.connpass.com")!),
        RegionSwift(name: "Chiba.swift", imageFilePath: "/images/regions/chibaswift.png", link: URL(string: "https://chibaswift.connpass.com")!),
        RegionSwift(name: "Kanagawa.swift", imageFilePath: "/images/regions/kanagawa.png", link: URL(string: "https://kanagawaswift.connpass.com")!),
    ]

    struct RegionSwift {
        let name: String
        let imageFilePath: String
        let link: URL
    }
}