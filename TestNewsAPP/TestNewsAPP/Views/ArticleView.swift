//
//  ArticleView.swift
//  TestNewsAPP
//
//  Created by Lwj on 2021/11/13.
//

import SwiftUI
import URLImage

struct ArticleView: View {
    
    let article: Article
    @State var isLoading: Bool
    
    var body: some View {
        HStack {
            
            if let imgURL = article.image,
               let url = URL(string: imgURL) {
                
                URLImage(url,
                         failure: { error, _ in
//                            PlaceholderImageView()
                         },
                         content: { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        })
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            } else {
//                            PlaceholderImageView()
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(article.title ?? "")
                    .foregroundColor(Theme.textColor)
                    .font(.system(size: 18,weight: .semibold))
                
                Text(article.source ?? "")
                    .foregroundColor(.gray)
                    .font(.footnote)
                
                if let date = article.date {
                    HStack{
                        Text(date,style: .date)
                            .foregroundColor(.gray)
                            .font(.system(size: 12, weight: .bold))
                        Text(date,style: .time)
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                }
            }
        }
        .redacted(reason: isLoading ? .placeholder : [])
        .allowsHitTesting(isLoading)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article.dummyData.first!, isLoading: false)
            .previewLayout(.sizeThatFits)
    }
}
