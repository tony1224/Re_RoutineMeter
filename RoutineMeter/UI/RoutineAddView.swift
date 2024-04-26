//
//  RoutineAddView.swift
//  RoutineMeter
//
//  Created by admin on 2024/04/27.
//

import SwiftUI

struct RoutineAddView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 16) {
                Text("this is alert view")
                Button {
                    var transaction = Transaction()
                    transaction.disablesAnimations = true
                    withTransaction(transaction) {
                        self.dismiss
                    }
                } label: {
                    Text("close")
                }
            }
            .padding(16)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.init(white: 0, opacity: 0.5))
    }
}

struct RoutineAddView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineAddView()
    }
}
