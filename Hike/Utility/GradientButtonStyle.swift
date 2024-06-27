//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by sidiqtoha on 17/06/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
        .label
        .padding(.vertical)
        .padding(.horizontal, 30)
        .background(
            configuration.isPressed ?
            LinearGradient(
            colors: [.customGrayLight, .customGrayMedium],
            startPoint: .bottom, endPoint: .top
            ):
            LinearGradient(
            colors: [.customGrayLight, .customGrayMedium],
            startPoint: .top, endPoint: .bottom
            )
        )
        .cornerRadius(40)
    }
}

