//
//  MacPlayground.swift
//  BotAvatarsKit
//
//  Created by Benjamin Kraatz on 20.10.26.
//


import SwiftUI

private struct MacPlayground: View {
    @State private var working = false
    var body: some View {
        VStack(spacing: 32) {
            HStack(spacing: 32) {
                BotAvatar(type: .star, state: working ? .working : .default, size: 72)
                BotAvatar(type: .flower, face: .mouth, size: 72)
                BotAvatar(type: .ghost, state: .sleeping, size: 72)
                BotAvatar(type: .clover, size: 72, color: BotColor(.pink))
            }
            Toggle("Working", isOn: $working)
        }
        .padding(60)
        .botAvatarPointer()   // mouse anywhere in here is the pointer
    }
}

#Preview { MacPlayground() }
