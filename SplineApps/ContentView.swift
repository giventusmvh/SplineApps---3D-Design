//
//  ContentView.swift
//  SplineApps
//
//  Created by Giventus Marco Victorio Handojo on 03/05/24.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
    var body: some View {
        VStack {
            Onboard3dView()
                .frame(height: 500)
                .ignoresSafeArea()
            
            VStack(spacing:12){
                Text("Build Your Brand")
                    .font(.title.bold())
                
                Text("Stay up to date with all your social media platform in one simple app")
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Button("Get Started"){
                //Button action goes here
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}


struct Onboard3dView : View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/wYGoVu8PHM4tvfiQz3sA/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        try? SplineView(sceneFileURL: url)
    }
}
