//
//  RoutineAddView.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/27.
//

import SwiftUI

struct RoutineAddView: View {
    @Binding var isPresented: Bool
    @State private var inputTitle = ""
    @Environment(\.dismiss) var dismiss
    
    init(isPresented: Binding<Bool>) {
        _isPresented = isPresented
    }
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.6)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 16) {
                TextField("日課を入力してください。", text: $inputTitle)
                    .padding()
                Button {
                    isPresented = false
                } label: {
                    Text("close")
                }
            }
            .padding()
            .frame(width: 300)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

struct RoutineAddView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineAddView(isPresented: .constant(true))
    }
}
