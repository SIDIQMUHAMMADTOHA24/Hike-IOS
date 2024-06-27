//
//  CardView.swift
//  Hike
//
//  Created by sidiqtoha on 16/06/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    func randomImage(){
        print("Status image = \(imageNumber)")
        repeat{
            randomNumber = Int.random(in: 1...5)
            
        }while imageNumber == randomNumber
        
        imageNumber = randomNumber
    }
    
    var body: some View {
        //Klik control klik pada widget untuk membungkus secara cepat seperti command . di VSC
        
        //CARD
        ZStack {
    
            //MARK: CONTAINER
            CustomBackgroundView()
            
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(
                                colors: [.colorGrayLight, .colorGrayMedium],
                                startPoint: .top,
                            endPoint: .bottom))
                        Spacer()
                        Button(action: {
                            print("Anjay")
                        }, label: {
                            CustomButtonView()
                        })
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .italic()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color("ColorIndigoMedium"),
                                    Color("ColorsSalmonLight")
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    Image("image-\(imageNumber)")
                         .resizable()
                         .scaledToFit()
                         .animation(.default,value: imageNumber )
                    
                     
                }
                Button(action: {
                    print(randomNumber)
                    randomImage()
                }, label: {
                    Text("Expore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [.colorGreenLight, .colorGreenMedium],
                            startPoint: .top,
                            endPoint: .bottom
                        ))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                })
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
