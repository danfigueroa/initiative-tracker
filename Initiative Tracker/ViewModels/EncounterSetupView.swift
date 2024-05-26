import SwiftUI

struct EncounterSetupView: View {
    @Binding var name: String
    @Binding var initiative: String
    @Binding var isEncounterActive: Bool
    @ObservedObject var manager: InitiativeManager

    var body: some View {
        Form {
            Section {
                TextField("Name", text: $name)
                TextField("Initiative", text: $initiative)
                Button(action: {
                    if let initiativeValue = Int(initiative) {
                        manager.addCharacter(name: name, initiative: initiativeValue)
                        name = ""
                        initiative = ""
                        isEncounterActive = true
                    }
                }) {
                    Text("Add Character")
                }
            }
        }
    }
}
