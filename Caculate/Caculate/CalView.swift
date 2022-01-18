//
//  CalView.swift
//  Caculate
//
//  Created by suhengxian on 2022/1/17.
//

import SwiftUI

struct CalView: View {
    let pad: [[CalculateButtonItem]] = [
        [.command(.clear), .command(.flip),
         .command(.percent), .op(.divide)],
        [.digit(7), .digit(8), .digit(9), .op(.multiply)],
        [.digit(4), .digit(5), .digit(6), .op(.minus)],
        [.digit(1), .digit(2), .digit(3), .op(.plus)],
        [.digit(0), .dot, .op(.equal)]]
    
    var body: some View {
        VStack(spacing: 8) {
            ForEach(pad, id: \.self) { row in
                CalBtnRow(row: row)
            }
        }
    }
}

struct CalView_Previews: PreviewProvider {
    static var previews: some View {
        CalView()
    }
}
