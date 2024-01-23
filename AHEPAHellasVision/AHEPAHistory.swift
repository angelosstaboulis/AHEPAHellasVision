//
//  AHEPAHistory.swift
//  AHEPAHellasVision
//
//  Created by Angelos Staboulis on 23/1/24.
//

import SwiftUI
import AVKit
import Foundation
struct AHEPAHistory: View {
    let videoUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "history", ofType: "mp4")!)
    var body: some View {
        VStack{
            VideoPlayer(player:AVPlayer(url: videoUrl))
        }
    }
}

#Preview {
    AHEPAHistory()
}
