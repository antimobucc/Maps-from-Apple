//
//  QuickActionCards.swift
//  Maps
//
//  Created by Antimo Bucciero on 16/11/25.
//

import Foundation
import SwiftUI

struct QuickActionCard: View {
    let icon: String
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 8) {
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundStyle(color)
                
                Text(title)
                    .font(.caption)
                    .foregroundStyle(.primary)
            }
            .frame(width: 120, height: 100)
            .background(.quaternary, in: Circle())
            .foregroundStyle(color)
        }
    }
}
