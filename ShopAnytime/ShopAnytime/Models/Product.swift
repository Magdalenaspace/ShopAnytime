//
//  Product.swift
//  ShopAnytime
//
//  Created by Magdalena Samuel on 10/10/23.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
    var desc: String
}

extension Product {
    static var productList = [
        Product(name: "Salomon", image: "unsplash", price: 140, desc: "X-Mission 4 silhouette, Ripstop fabric upper,  Suede overlays, Lace closure, Salomon branding on side, Molded EVA midsole, Track sole."),
        Product(name: "Adidas by Stella Mccartney", image: "sh2", price: 280, desc: "A chunky heel heightens the on-trend style of a chic sandal finished with a slim, adjustable ankle strap. 1/2 inch heel (size 8.5), 1/2 inch ankle strap height, Adjustable ankle strap with buckle closure, Lightly padded footbed, Textile upper/synthetic lining and sole, Imported"),
        Product(name: "Adidas Handball Special", image: "sh3", price: 129, desc: "The Handball Spezial model by adidas which is part of the SU2023 campaign, is now available at ShopAnytime"),
        Product(name: "adidas Kids", image: "s2", price: 25, desc: "From the basketball court to the classroom. Everyone deserves a pair of adidas Superstars Shoes. This kids' version celebrates 50 years of the classic shell-toe design. From the distinctive serrated 3-Stripes to the comfortable rubber cupsole, this anniversary edition honors an icon. Whether they sport all white, all black or something in between, these shoes keep little ones looking fresh."),
        Product(name: "11 by Boris Bidjan Saberi", image: "sh5", price: 290, desc: "Bamba 2 High GTX x SVD"),
        Product(name: "Nike Air Yellow", image: "shoes6", price: 49, desc: "Nike Air is our iconic innovation that uses pressurized air in a durable, flexible membrane to provide lightweight cushioning. The air compresses on impact and then immediately returns to its original shape and volume, ready for the next impact."),
        Product(name: "Allbirds Women's Heels", image: "shoes7", price: 119, desc: "A spring statement heel that we’re excited to wear season after season. PAILY’s unique braided detailing feels feminine and sophisticated. We’ll be pairing her with tailored trousers for a cool juxtaposition."),
        Product(name: "BAYLOR SANDAL", image: "shoes8", price: 79, desc: "From our RSVP collection // A luxe look for every RSVP. A gorgeous cutout vamp, adjustable ankle strap and open toe makes this elegant dress heel an instant go-to. Get there beautifully. Platform pump with chic, cutout designs. Manmade, metallic manmade or fabric upper with a round toe. Adjustable buckle closure. Contour+ technology for a premium fit and all-day comfort experience. Non-slip outsole. 3.25 platform heel. Consciously packaged: 100% of our shoe boxes are made of 80% recycled paper + soy-based ink. Designed using sustainable materials. WHY YOU'LL LOVE IT: Ingenious elegant utility. From our RSVP collection. For every woman. For every occasion. Available in an inclusive size range of tough-to-find sizes and widths for a custom-designed fit and feel for all-day wear. The Shoe With the Beautiful Fit."),
        Product(name: "Air Maz Excee", image: "shoes9", price: 99, desc: "Inspired by the Nike Air Max 90, the Nike Air Max Excee is a celebration of a classic through a new lens. Elongated lines and distorted proportions on the upper bring the '90s look you love into a new, modern space."),
        Product(name: "GrandPro Rally", image: "shoes10", price: 75, desc: "Perforated leather uppers for ultimate breathability. A lightweight EVA outsole and minimally reinforced upper reduce weight without sacrificing comfort. Perforations on the upper along with textile linings allow for breathability. Ortholite® foam internal footbed for underfoot comfort. An anatomical last ensures an ideal fit. Rubberized EVA outsole for increased traction"),
        Product(name: "Nike Green", image: "shoes11", price: 79, desc: "Let your youthful optimism shine in the Nike Air Force 1 ’07 Premium, the b-ball original that proves you're never too old to go pineapples. Refreshing the legendary look, the Swoosh and heel feature richly textured plant material that's crafted from pineapple leaf fiber. The coconut milk-inspired upper is easy to style while the cork infused outsole adds earthy sophistication to your outfit."),
        Product(name: "Nike Air Black", image: "shoes12", price: 35, desc: "Nike Air is our iconic innovation that uses pressurized air in a durable, flexible membrane to provide lightweight cushioning. The air compresses on impact and then immediately returns to its original shape and volume, ready for the next impact."),
        Product(name: "Vans Canvas", image: "shoes13", price: 59, desc: "Show them on what being old school is all about with the classic Vans® Old Skool™ shoes! Classic skate shoes in a storied low-profile sneaker silhouette with uppers of canvas or suede and canvas. Padded collar and footbed for added comfort, fit, and superior shock absorption. Cotton drill lining provides excellent breathability and extra comfort. Side stripe detailing offers iconic skateboard style. Die-cut EVA insert for added support."),
        Product(name: "Nike Air Kids", image: "shoes14", price: 49, desc: "Nike Air Kids is our iconic innovation that uses pressurized air in a durable, flexible membrane to provide lightweight cushioning. The air compresses on impact and then immediately returns to its original shape and volume, ready for the next impact.")
    ]
}

//
//struct Product: Decodable {
//    let id: Int
//    let title: String
//    let description: String
//    let imageUrl: String
//}
