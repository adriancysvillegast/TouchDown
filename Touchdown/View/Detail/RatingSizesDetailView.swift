//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 14/8/23.
//

import SwiftUI

struct RatingSizesDetailView: View {
    // MARK: - Properties
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    // MARK: - Body
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            
            VStack(alignment: .leading, spacing: 3) {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGrey)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGrey.cornerRadius(5))
                                .foregroundColor(.white)
                        }//: Button
                    }//: Loop
                }//:HStack
            }//:VStack
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGrey)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGrey)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGrey, lineWidth: 2)
                                )
                        }//:Button
                    }//: Loop
                }//:VStack
            }//: VStack
        }//:HStack
    }
}
// MARK: - Preview
struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
