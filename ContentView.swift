import SwiftUI


class ArrayModificationViewModel: ObservableObject {
    @Published var users: [UserModel] = [];
    @Published var filterdArray: [UserModel] = [];
    
    init() {
        getUsers()
        filter()
    }
    
    func filter() {
        // SORT
        /*
        filterdArray = users.sorted(by: { user1, user2 -> Bool in
            return user1.points < user2.points
        })
        
        // Other way to sort data
        filterdArray = users.sorted(by: { $0.points > $1.points })
         
        */
        
        // FILTER
        filterdArray = users.filter( {
            (user) -> Bool in user.isVerified == false
        })
        
        // MAP
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
        List {
            ForEach(vm.filterdArray, id: \.id) { item in
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.title3)
                    HStack {
                        Text("Ponts \(item.points)")
                        Spacer()
                        if item.isVerified {
                            Image(systemName: "flame.fill")
                        }
                    }
                }
            }
        }// LIST
        
    }
}
