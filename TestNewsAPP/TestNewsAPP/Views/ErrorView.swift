//
//  ErrorView.swift
//  TestNewsAPP
//
//  Created by Lwj on 2021/11/14.
//

import SwiftUI

struct ErrorView: View {
    
    typealias ErrorViewActionHandler = () -> Void
    
    let error: Error
    let handler: ErrorViewActionHandler
    
    internal init(error: Error,
                  handler: @escaping ErrorView.ErrorViewActionHandler) {
        self.error = error
        self.handler = handler
    }
    
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.icloud.fill")
                .foregroundColor(.gray)
                .font(.system(size: 50, weight: .heavy))
                .padding(.bottom)
            Text("Ooooops")
                .foregroundColor(Theme.textColor)
                .font(.system(size: 30, weight: .heavy))
            Text(error.localizedDescription)
                .foregroundColor(.gray)
                .font(.system(size: 15))
            Button(action: {
                handler()
            }, label: {
                Text("Retry")
            })
                .padding(.vertical, 12)
                .padding(.horizontal,30)
                .background(.blue)
                .foregroundColor(.white)
                .font(.system(size: 15, weight: .heavy))
                .cornerRadius(10)
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: APIError.decodingError) {}
            .previewLayout(.sizeThatFits)
    }
}
