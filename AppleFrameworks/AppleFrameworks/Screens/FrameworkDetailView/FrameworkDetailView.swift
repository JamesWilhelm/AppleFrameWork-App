//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by James Wilhelm on 7/8/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameWorkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn more")
            }
        }
        //sheet does almost full screen, while fullScreen covers full screen
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "google.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
