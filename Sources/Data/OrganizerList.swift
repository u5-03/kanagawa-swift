import Foundation

enum OrganizerList {
    static let members: [OrganizerMember] = [
        OrganizerMember(name: "Ryomu", imageFilePath: "images/icons/ryomu.jpeg", link: URL(string: "https://x.com/__ryomm")!),
        OrganizerMember(name: "Sugiy", imageFilePath: "images/icons/sugiy.jpeg", link: URL(string: "https://x.com/u5_03")!),
        OrganizerMember(name: "tockrock", imageFilePath: "images/icons/tockrock.jpeg", link: URL(string: "https://x.com/tockrock")!),
        OrganizerMember(name: "とんとんぼ", imageFilePath: "images/icons/tontonbo.jpeg", link: URL(string: "Ktombow1110")!),
        OrganizerMember(name: "ojun", imageFilePath: "images/icons/ojun.jpeg", link: URL(string: "https://x.com/ojun_9")!),
        OrganizerMember(name: "matsuji", imageFilePath: "images/icons/matsuji.jpeg", link: URL(string: "https://x.com/mtj_j")!),
        OrganizerMember(name: "treastrain", imageFilePath: "images/icons/treastrain.jpeg", link: URL(string: "https://x.com/treastrain")!),
        OrganizerMember(name: "fromkk", imageFilePath: "images/icons/fromkk.jpeg", link: URL(string: "https://x.com/fromkk")!),
    ]

    struct OrganizerMember {
        let name: String
        let imageFilePath: String
        let link: URL
    }
}