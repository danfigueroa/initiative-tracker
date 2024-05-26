import SwiftUI

class InitiativeManager: ObservableObject {
    @Published var characters: [Character] = []

    var sortedCharacters: [Character] {
        characters.sorted(by: { $0.initiative > $1.initiative })
    }

    func addCharacter(name: String, initiative: Int) {
        let newCharacter = Character(name: name, initiative: initiative)
        characters.append(newCharacter)
    }

    func removeCharacter(at offsets: IndexSet) {
        characters.remove(atOffsets: offsets)
    }
}
