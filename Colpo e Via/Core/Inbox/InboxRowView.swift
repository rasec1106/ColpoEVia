//
//  InboxRowView.swift
//  Colpo e Via
//
//  Created by Rafhael Pillaca Pariona on 4/11/23.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment : .top,spacing: 12){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64,height: 64)
                .foregroundColor(Color(.systemGray5))
            VStack(alignment : .leading, spacing: 4){
                Text("Heath ledger")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Some test message for now that spans more than one line")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100 , alignment: .leading)
            }
            
            HStack{
                Text("yesterday")
                
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
       
        .frame(height: 72)
    }
}

#Preview {
    InboxRowView()
}
