import Foundation

struct KanagawaSwiftModel: Decodable {
    let name: String
    let language: String
    let navBar: NavBarModel
    let home: HomeModel
}

struct NavBarModel: Decodable {
    let organizer: String
}

struct HomeModel: Decodable {
    let title: String
    let description: String
}