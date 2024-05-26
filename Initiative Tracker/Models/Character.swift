import Foundation

class Character: Identifiable, ObservableObject {
    let id = UUID()
    @Published var name: String
    @Published var initiative: Int

    init(name: String, initiative: Int) {
        self.name = name
        self.initiative = initiative
    }
}
