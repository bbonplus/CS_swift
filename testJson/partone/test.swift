//
//  test.swift
//  testJson
//
//  Created by bo on 2025/11/12.
//

import SwiftUI


struct AddView: View {
    var body: some View {
        ScrollView{
            VStack{
                Button(action: {}, label: {
                    Text("button")
                        .foregroundColor(.white)
                        .frame(height: 30)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .navigationTitle("title2")
                })
                .navigationTitle("title1")
                
                Text("text")
                    .navigationTitle("title3")
            }.padding(15)
            .navigationTitle("title4")
        }.navigationTitle("title5")
    }
}
#Preview {
    NavigationStack{
        AddView()
    }
}

