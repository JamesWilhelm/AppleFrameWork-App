//
//  FrameWorkGridView.swift
//  AppleFrameworks
//
//  Created by James Wilhelm on 7/8/22.
//

import SwiftUI

struct FrameWorkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
   
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameWorkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

struct FrameWorkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkGridView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portrait)
    }
}


