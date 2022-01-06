////
////  LinkView.swift
////  RealScheduler
////
////  Created by robevans on 12/7/21.
////
//
//import SwiftUI
//
//// swiftlint:disable all
//struct Link: Identifiable {
//    var id = UUID()
//    var string: String
//}
//
//struct LinkView: View {
//
//    let links: [Link] = ["https://docs.google.com/document/d/1RixEYjiwni6iFBZ3Cxnb-7tm73oSahflt-7CVctHp7U/edit?usp=sharing", " https://www.nachi.org/documents2012/Checklist/CBHI%20Home%20Inspection%20Report.pdf"].map{Link(string: $0)}
//
//    var body: some View {
//        NavigationView {
//            List {
//                Section(footer: Text("")) {
//                    ForEach(links) {
//                        link in
//                        LinkCell(url: URL(string: link.string)!)
//                    }
//                }
//
//            }
//            .onAppear { UITableView.appearance().separatorStyle = .none }
//            .navigationBarTitle("Links")
//            .environment(\.defaultMinListRowHeight, 250)
//
//        }
//    }
//    private func setReaction(_ reaction: String, for link: Link) { }
//
//}
//
//struct LinkView_Previews: PreviewProvider {
//    static var previews: some View {
//        LinkView()
//    }
//}
