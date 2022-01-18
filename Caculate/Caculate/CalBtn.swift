//
//  CalBtn.swift
//  Caculate
//
//  Created by suhengxian on 2022/1/17.
//

import SwiftUI

struct CalBtn: View {
    //定义的常量
    let fontSize:CGFloat = 38
    //定义的变量
    let title:String
    let size:CGSize
    let action:()->Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: fontSize))
                .foregroundColor(.white)
                .frame(width: size.width, height: size.height, alignment: .center)
                .background(.red)
                .cornerRadius(size.width/2.0)
        }

    }
}

struct CalBtn_Previews: PreviewProvider {
    static var previews: some View {
        CalBtn(title: "hello", size: CGSize(width: 88.0, height: 88.0)) {
            print("hello world")
        }
    }
}
