//
//  FrameWorkTitleView.swift
//  AppleFrameworks
//
//  Created by James Wilhelm on 7/9/22.
//

import SwiftUI

struct FrameWorkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameWorkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkTitleView(framework: MockData.sampleFramework)
    }
}
