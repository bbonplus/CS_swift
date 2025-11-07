//
//  ContentView.swift
//  testJson
//
//  Created by bo on 2025/10/24.
//

import SwiftUI

struct ContentView: View {
    //People variable starting with a empty array of Person
    @State private var people = [Person]()
    @State private var roll = 0
    @State private var count = 0
        
        var body: some View {
            VStack {
//                List(people) { person in
//                    HStack(spacing: 20) {
//                        Text(person.first)
//                        
//                        Spacer()
//                        
////                        Text(person.last)
//                    }
//                }
                Text("while number = 20 ，can stop!")
                
                Button("start rolling"){
                    Task{
                        while roll != 20{
                            roll = Int.random(in: 1...20)
                            try? await Task.sleep(for: .milliseconds(200))
                            count += 1
                        }
                    }
                }
                
                if roll == 20{
                    Text("you win")
                        .font(.title)
                        .foregroundStyle(.red)
                }
                
                Text(verbatim: "\(roll)")
                Text(verbatim: "\(count)")
                Text("今日幸运度为：\(count*100/20)%")
                
                Button("restart"){
                    roll = 0
                }
                
            }
            .padding()
        }
    
    
    func  decode ( _  file : String ) -> [ Person ] {
            guard  let url =  Bundle .main.url(forResource: file, withExtension: nil ) else {
                fatalError ( "无法在 bundle 中找到\(file) " )
            }
            
            guard  let data =  try?  Data (contentsOf: url) else {
                fatalError ( "无法从 bundle 中的\(file)加载文件" )
            }
            
            let decoder =  JSONDecoder ()
            
        guard  let loadedFile =  try? decoder.decode([ Person ].self , from: data) else {
                fatalError ( "无法从 bundle 中解码\(file) " )
            }
            
            return loadedFile
        }
}

#Preview {
    ContentView()
}
//情况1 后端给的数据没有一个字段会怎么样？直接无法解吗 ，即使定义了没有使用也是会直接报无法解析的问题

//情况2 前段解析的字段少一个会怎么样？没有影响，换句话说用什么拿什么，可以多返回但是不能少
//情况3 后端返回的字段不一样应该如何处理 在封装一层
