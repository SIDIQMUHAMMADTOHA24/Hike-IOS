//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by sidiqtoha on 16/06/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            //MARK - 3. SHADOW
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            
            LinearGradient(colors: [
                .customGreenLight,
                .customGreenMedium
            ],
            startPoint: .top,
            endPoint: .bottom
            )
            .cornerRadius(40)
            
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
