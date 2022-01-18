//
//  CalculateButtonItem.swift
//  Caculate
//
//  Created by suhengxian on 2022/1/17.
//

import SwiftUI

//以下代码很重要，值得仔细研究

//定义一个枚举类
enum CalculateButtonItem {
    
    enum Op:String {
        case plus = "+"
        case minus = "-"
        case divide = "/"
        case multiply = "*"
        case equal = "="
    }
    
    enum Command:String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }
    
    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculateButtonItem:Hashable{
    var title:String{
        switch self{
            case .digit(let value):return String(value)
            case .dot:return "."
            case .op(let op):return op.rawValue
            case .command(let command):return command.rawValue
        }
    }
    
    var size:CGSize{
        if case .digit(let value) = self,value == 0{
            return CGSize(width: 88 * 2 + 8, height: 88)
        }
        return CGSize(width: 88, height: 88)
    }
    
    var backGroundColorName:String{
        switch self{
            case .digit,.dot:return "digitBackground"
            case .op:return "operatorBackground"
            case .command:return "commandBackground"
        }
    }
}




