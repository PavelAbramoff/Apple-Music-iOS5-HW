//
//  MiniPlayer2.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 13.08.2022.
//

import SwiftUI

struct MiniPlayer: View {
    
    var animation: Namespace.ID
    @Binding var expand: Bool
    
    var height = UIScreen.main.bounds.height / 3
    
    // safearea...
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    // Volume Slider
    @State var volume : CGFloat = 0
    
    // gesture Offset
    @State var offset: CGFloat = 0
    
    var body: some View {
        VStack{
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top,expand ? safeArea?.top : 0)
                .padding(.vertical,expand ? 30 : 0)
            
            HStack(spacing: 15) {
                
                if expand{Spacer(minLength: 0)}
                
                Image("s8")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 50, height: expand ? height : 50)
                    .cornerRadius(15)
                
                if !expand{
                    
                    Text("Pirates")
                        .font(.title2)
                        .fontWeight(.bold)
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                Spacer(minLength: 0)
                
                if !expand{
                    
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
            }
            .padding(.horizontal)
            
            VStack(spacing: 15){
                
                Spacer(minLength: 0)
                
                HStack{
                    
                    if expand{
                        
                        Text("The pirates is hear !!!")
                            .font(.title2)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "Label", in: animation)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding()
                .padding(.top,20)
                
                /// Live String...
                HStack{
                    Capsule()
                        .fill(
                            LinearGradient(gradient: .init(colors:
                                                            [Color.primary.opacity(0.7),Color.primary.opacity(0.1)]),
                                           startPoint: .leading,
                                           endPoint: .trailing)
                        )
                        .frame(height: 4)
                    
                    Text("LIFE")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Capsule()
                        .fill(
                            LinearGradient(gradient: .init(colors:
                                                            [Color.primary.opacity(0.1),Color.primary.opacity(0.7)]),
                                           startPoint: .leading,
                                           endPoint: .trailing)
                        )
                        .frame(height: 4)
                }
                .padding()
                
                //Stop button...
                Button(action:{}){
                    Image(systemName: "stop.fill")
                        .font(.largeTitle)
                        .foregroundColor(.primary)
                }
                .padding()
                
                Spacer(minLength: 0)
                
                HStack(spacing: 15){
                    
                    Image(systemName: "speaker.fill")
                    
                    Slider(value: $volume)
                    
                    Image(systemName: "speaker.wave.2.fill")
                }
                .padding()
                
                HStack(spacing: 22){
                    Button(action: {}) {
                        Image(systemName: "arrow.up.message")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding(.bottom,safeArea?.bottom == 0 ? 15 : safeArea?.bottom)
            }
            // this will give strech effect....
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        // expanding to full screen when clicked...
        .frame(maxHeight: expand ? .infinity: 60)
        // moving the miniplayer above the tabbar
        // approz tab bar height is 49
        
        // Divider Line For Separting Miniplaer and TabBar
        .background(
            
            VStack(spacing: 0){
                
                BlurView()
                
                Divider()
            }
                .onTapGesture(perform: {
                    
                    withAnimation(.spring()){expand = true}
                })
        )
        .cornerRadius(expand ? 20 : 0)
        .offset(y: expand ? 0: -48)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onended(value:)).onChanged(onchanged(value:)))
        .ignoresSafeArea()
    }
    
    func onchanged(value: DragGesture.Value) {
        
        // only allowing when its explanded...
        if value.translation.height > 0 && expand {
            
            offset = value.translation.height
        }
    }
    
    func onended(value: DragGesture.Value) {
        
        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.95,
                                         blendDuration: 0.95)){
            
            // if value is > than / 3 then closing view..
            if value.translation.height > height{
                
                expand = false
            }
            offset = 0
        }
    }
}
