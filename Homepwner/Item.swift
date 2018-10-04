import UIKit

class Item: NSObject {
    
    var name: String
    var valueInEuros: Int
    var serialNumber: String?
    
    let dateCreated: Date

    init(name: String, valueInEuros: Int, serialNumber: String?) {
        
        self.name = name
        self.valueInEuros = valueInEuros
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        
        if random {
        
            let adjetives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
        
            var idx = arc4random_uniform(UInt32(adjetives.count))
            let randomAdjetive = adjetives[Int(idx)]
        
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]

            let randomName = "\(randomAdjetive) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
        
            self.init(name: randomName, valueInEuros: randomValue, serialNumber: randomSerialNumber)
        
        } else {
            self.init(name: "", valueInEuros: 0, serialNumber: nil)
        }
        
    }
    
}
