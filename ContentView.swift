import SwiftUI


class ArrayModificationViewModel: ObservableObject {
    @Published var users: [UserModel] = [];
    
    init() {
            getUsers()
    }
    
    func getUsers() {
        let user1 = UserModel(name: "Alex", points: 10, isVerified: false);
        let user2 = UserModel(name: "John", points: 10, isVerified: true);
        let user3 = UserModel(name: "Mike", points: 40, isVerified: false);
        let user4 = UserModel(name: "Anderson", points: 70, isVerified: true);
        let user5 = UserModel(name: "Dalmus", points: 100, isVerified: false);
        
        users.append(contentsOf: [user1, user2, user3, user4, user5]);
    }
}

struct UserModel: Identifiable {
    let id = UUID().uuidString;
    let name: String;
    let points: Int;
    let isVerified: Bool;
}

struct ContentView: View {
    @StateObject var vm  = ArrayModificationViewModel();
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(vm.users, id: \.id) { item in
                VStack {
                    Text(item.name)
                        .font(.title3)
                    HStack {
                        Text("Ponts \(item.points)")
                        Spacer()
                        if item.isVerified {
                            Image(systemName: "frame.fill")
                        }
                    }
                }
            }
        }
    }
}
