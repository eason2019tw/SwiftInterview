import UIKit

// [map] 有一個Int Array [1, 3, 5], 如果要將它轉成字串陣列，可以怎麼做？
let intArray = [1, 3, 5]
let strArray = intArray.map {
    return "\($0)"
}

// [filter] 列出Int 陣列中大於1的有哪些數字？
let filterArr = intArray.filter{
    return $0 > 1
}

// [reduce] 如何計算Int 陣列中的總數
let result = intArray.reduce(0){
    return $0 + $1
}

// 今天有A 跟 B 這兩個ViewController, 當從A切換到B之後，仍可以在B控制A？
// A: 可以將A ViewController 傳給B ViewController

// 承上題，如果是用Storyboard 拉Segue 線，那麼需要寫在哪裡？
// A: prepare func

// 跟API串接的時候，如何解析response JSON 的資料？
// A: Codable (包含了Encodable & Decodable)


// 如果今天有一個User API, 你給他A 他的response是 {"success": true, "name": "A", "age": 20}，如果給B, 他的response 會是 {"success": false, "error": "not support B"}
//你會如何定義這個model?
struct User: Codable{
    var success: Bool
    var error: String?
    var name: String?
    var age: Int?
}
