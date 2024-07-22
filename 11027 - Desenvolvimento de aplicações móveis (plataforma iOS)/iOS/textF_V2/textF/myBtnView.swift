//
//  myBtnView.swift
//  textF
//
//  Created by Gonçalo Feliciano on 19/07/2024.
//

import SwiftUI

struct myBtnView: View {
    var txt:String
    var size:CGSize = CGSize(width: 200, height: 60)
    
    var body: some View {
        Text(txt)
            .font(.largeTitle)
            .frame(width: size.width, height: size.height)
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

#Preview {
    myBtnView(txt:"Submit" )
}
