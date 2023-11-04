//
//  InboxView.swift
//  Colpo e Via
//
//  Created by Rafhael Pillaca Pariona on 4/11/23.
//

import SwiftUI

struct InboxView: View {
    @State private var showNewMessaageView = false
    var body: some View {
        NavigationStack{
            ScrollView{
                ActiveNowView()
                
                List{
                    ForEach(0...10, id:\.self){ message in
                        InboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            .fullScreenCover(isPresented : $showNewMessaageView, content: {
                NewMessageView()
            })
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack{
                        Image(systemName: "person.circle.fill")
                        
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showNewMessaageView.toggle()
                    }label: {
                       Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32,height: 32)
                            .foregroundStyle(.black,Color(.systemGray5))
                    }
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
