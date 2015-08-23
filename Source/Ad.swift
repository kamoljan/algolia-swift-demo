import Foundation
import SwiftyJSON

struct Ad {
  let title: String
  let description: String
  let medium_list: String
  let large_list: String
  let xlarge_list: String
  let price: Int
  let loveCount: Int

  init(json: JSON) {
    title = json["_highlightResult", "title", "value"].stringValue
    description = json["description"].stringValue
    xlarge_list = json["xlarge_list"].stringValue
    large_list = json["large_list"].stringValue
    medium_list = json["medium_list"].stringValue
    price = json["price"].intValue
    loveCount = json["loveCount"].intValue
  }
}