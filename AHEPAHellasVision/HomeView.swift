//
//  HomeView.swift
//  AHEPAHellasVision
//
//  Created by Angelos Staboulis on 23/1/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Image("back").ignoresSafeArea(.all)
                .overlay {
                    VStack{
                        Image("ahepahellas").padding(60.0)
                        Spacer()
                    }
                }
        }
    }
}

#Preview {
    HomeView()
}
