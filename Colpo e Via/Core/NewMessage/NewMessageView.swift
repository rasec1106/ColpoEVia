//
//  NewMessageView.swift
//  Colpo e Via
//
//  Created by Rafhael Pillaca Pariona on 4/11/23.
//

import SwiftUI

struct NewMessageView: View {
    @State private var searchtext = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ScrollView{
                TextField("To: ",text: $searchtext )
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                    .foregroundColor(.black)
                }
            }
            
        }
    }
}

#Preview {
    NavigationStack{
        NewMessageView()
    }
}
