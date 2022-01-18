//
//  SwiftUIView.swift
//  Caculate
//
//  Created by suhengxian on 2022/1/17.
//

import SwiftUI

struct CalBtnRow: View {
    let row:[CalculateButtonItem]
    
    var body: some View {
        HStack{
            ForEach(row,id:\.self){item in
                CalBtn.init(title: item.title, size: item.size) {
                    print("Button:\(item.title)")
                }
            }
        }
    }
}

struct CalBtnRow_Previews:PreviewProvider {
    static var previews: some View {
        CalBtnRow(row: [.digit(1),.digit(2),.digit(3),.digit(4)])
    }
}
