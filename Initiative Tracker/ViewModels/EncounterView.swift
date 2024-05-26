import SwiftUI

struct EncounterView: View {
    @ObservedObject var manager: InitiativeManager
    @Binding var isEncounterActive: Bool
    @State private var currentCharacterIndex = 0

    var body: some View {
        VStack {
            List {
                ForEach(manager.sortedCharacters.indices, id: \.self) { index in
                    HStack {
                        Text(manager.sortedCharacters[index].name)
                            .foregroundColor(index == currentCharacterIndex ? .blue : .primary)
                        Spacer()
                        Text("\(manager.sortedCharacters[index].initiative)")
                    }
                }
            }
            HStack {
                Button(action: {
                    currentCharacterIndex = (currentCharacterIndex + 1) % manager.sortedCharacters.count
                }) {
                    Text("Next")
                }
                Button(action: {
                    isEncounterActive = false
                }) {
                    Text("Finish Encounter")
                }
            }
        }
        .padding()
    }
}
