//
//  AccountView.swift
//  DesignCodeiOS15
//
//  Created by Rogelio Torres on 12/01/22.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPinned = false
    var body: some View {
        NavigationView {
            List {
                profile
                menu
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
    var profile: some View{
        VStack{
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(
                    .ultraThinMaterial))
                .background(AnimatedBlobView()
                                .frame(width: 400, height: 414)
                                .offset(x: 200, y: 0)
                                .scaleEffect(0.5))
                .background(HexagonView()
                                .offset(x: -50, y: -100))
                .background(
                    AnimatedBlobView()
                        .offset(x: 200, y: 0)
                        .scaleEffect(0.6)
                )
            Text("Roger Torres")
                .font(.title.weight(.semibold))
            HStack{
                Image(systemName: "location")
                    .imageScale(.large)
                Text("Guadalajara, Jal.")
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
    }
    
    var menu: some View {
        Section {
            NavigationLink(destination: HomeView()) {
                Label("Settings", systemImage: "gear")
            }
            NavigationLink { Text("Billing") } label: {
                Label("Billing", systemImage: "creditcard")
            }
            NavigationLink { HomeView() } label: {
                Label("Help", systemImage: "questionmark")
            }
        }
        .accentColor(.primary)
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
        
    }
    var links: some View {
        Section {
            if !isDeleted {
                Link(destination: URL(string: "https://google.com")!){
                    HStack {
                        Label("Webside", systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: false){
                    Button(action:{isDeleted = true}){
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red)
                    pinButton
            }
            }
            Link(destination: URL(string: "https://youtube.com")!){
                HStack {
                    Label("YoutTube", systemImage: "tv")
                    Spacer()
                    Image(systemName: "link")
                }
            }
            .swipeActions(edge: .leading, allowsFullSwipe: false){
                Button(action:{isDeleted = true}){
                    Label("Delete", systemImage: "trash")
                }
                .tint(.red)
                pinButton
        }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    var pinButton: some View {
        Button { isPinned.toggle() } label: {
            if isPinned{
                Label("Unpin", systemImage: "pin.slash")
            }else{
                Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .yellow)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
