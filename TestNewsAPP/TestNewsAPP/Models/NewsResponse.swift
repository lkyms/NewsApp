//
//  NewsResponse.swift
//  TestNewsAPP
//
//  Created by Lwj on 2021/11/13.
//

import Foundation

// MARK: - Welcome
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable, Equatable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title, articleDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

extension Article {
    
//    "author": "Pat Forde",
//                "url": "https://www.si.com/college/2021/11/13/florida-samford-defense-dan-mullen-hot-seat",
//                "source": "Sports Illustrated",
//                "title": "Florida's Samford Debacle (and Denials) Should Be Final Nail in the Coffin for Dan Mullen - CalBearsMaven",
//                "description": "The Gators gave up a record 42 points in the first half to the FCS foe, but Mullen bizarrely doesn't seem concerned.",
//                "image": "https://www.si.com/.image/t_share/MTg1MjYzOTU5MjM2OTQ1NTE4/mullen-vs-samford-sideline.jpg",
//                "date": "2021-11-13T23:57:12Z"
    
    
    
    static var dummyData: [Article] {
        [
            .init(author: "Pat Forde",
                  url: "https://www.si.com/college/2021/11/13/florida-samford-defense-dan-mullen-hot-seat",
                  source: "Sports Illustrated",
                  title: "Florida's Samford Debacle (and Denials) Should Be Final Nail in the Coffin for Dan Mullen - CalBearsMaven",
                  articleDescription: "The Gators gave up a record 42 points in the first half to the FCS foe, but Mullen bizarrely doesn't seem concerned.",
                  image: "https://www.si.com/.image/t_share/MTg1MjYzOTU5MjM2OTQ1NTE4/mullen-vs-samford-sideline.jpg",
                  date: Date()),
            .init(author: "Pat Forde",
                  url: "https://www.si.com/college/2021/11/13/florida-samford-defense-dan-mullen-hot-seat",
                  source: "Sports Illustrated",
                  title: "Florida's Samford Debacle (and Denials) Should Be Final Nail in the Coffin for Dan Mullen - CalBearsMaven",
                  articleDescription: "The Gators gave up a record 42 points in the first half to the FCS foe, but Mullen bizarrely doesn't seem concerned.",
                  image: "https://www.si.com/.image/t_share/MTg1MjYzOTU5MjM2OTQ1NTE4/mullen-vs-samford-sideline.jpg",
                  date: Date()),
            .init(author: "Pat Forde",
                  url: "https://www.si.com/college/2021/11/13/florida-samford-defense-dan-mullen-hot-seat",
                  source: "Sports Illustrated",
                  title: "Florida's Samford Debacle (and Denials) Should Be Final Nail in the Coffin for Dan Mullen - CalBearsMaven",
                  articleDescription: "The Gators gave up a record 42 points in the first half to the FCS foe, but Mullen bizarrely doesn't seem concerned.",
                  image: "https://www.si.com/.image/t_share/MTg1MjYzOTU5MjM2OTQ1NTE4/mullen-vs-samford-sideline.jpg",
                  date: Date()),
            .init(author: "Pat Forde",
                  url: "https://www.si.com/college/2021/11/13/florida-samford-defense-dan-mullen-hot-seat",
                  source: "Sports Illustrated",
                  title: "Florida's Samford Debacle (and Denials) Should Be Final Nail in the Coffin for Dan Mullen - CalBearsMaven",
                  articleDescription: "The Gators gave up a record 42 points in the first half to the FCS foe, but Mullen bizarrely doesn't seem concerned.",
                  image: "https://www.si.com/.image/t_share/MTg1MjYzOTU5MjM2OTQ1NTE4/mullen-vs-samford-sideline.jpg",
                  date: Date()),
            .init(author: "Pat Forde",
                  url: "https://www.si.com/college/2021/11/13/florida-samford-defense-dan-mullen-hot-seat",
                  source: "Sports Illustrated",
                  title: "Florida's Samford Debacle (and Denials) Should Be Final Nail in the Coffin for Dan Mullen - CalBearsMaven",
                  articleDescription: "The Gators gave up a record 42 points in the first half to the FCS foe, but Mullen bizarrely doesn't seem concerned.",
                  image: "https://www.si.com/.image/t_share/MTg1MjYzOTU5MjM2OTQ1NTE4/mullen-vs-samford-sideline.jpg",
                  date: Date()),
            .init(author: "Pat Forde",
                  url: "https://www.si.com/college/2021/11/13/florida-samford-defense-dan-mullen-hot-seat",
                  source: "Sports Illustrated",
                  title: "Florida's Samford Debacle (and Denials) Should Be Final Nail in the Coffin for Dan Mullen - CalBearsMaven",
                  articleDescription: "The Gators gave up a record 42 points in the first half to the FCS foe, but Mullen bizarrely doesn't seem concerned.",
                  image: "https://www.si.com/.image/t_share/MTg1MjYzOTU5MjM2OTQ1NTE4/mullen-vs-samford-sideline.jpg",
                  date: Date()),
            .init(author: "Pat Forde",
                  url: "https://www.si.com/college/2021/11/13/florida-samford-defense-dan-mullen-hot-seat",
                  source: "Sports Illustrated",
                  title: "Florida's Samford Debacle (and Denials) Should Be Final Nail in the Coffin for Dan Mullen - CalBearsMaven",
                  articleDescription: "The Gators gave up a record 42 points in the first half to the FCS foe, but Mullen bizarrely doesn't seem concerned.",
                  image: "https://www.si.com/.image/t_share/MTg1MjYzOTU5MjM2OTQ1NTE4/mullen-vs-samford-sideline.jpg",
                  date: Date()),
            
        ]
        
    }
}
