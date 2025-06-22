//
//  WeatherButton.swift
//  SwiftUI Weather
//
//  Created by Arman on 22/6/25.
//

import Foundation
import SwiftUI

struct ButtonView: View {
    var title :  String
    var textColor : Color
    var backgroundColor : Color
    var body: some View {
        Text ("\(title)")
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
