//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by James Wilhelm on 7/8/22.
//

import Foundation
import SwiftUI

struct AFButton: View{
    
    var title: String
    
    var body: some View{
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }

