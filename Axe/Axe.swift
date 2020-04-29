import Foundation

struct Axe {

    enum type: String {
        case information
        case critical
        case warning
        case unknown
    }

    static func chop(_ text: String, type: type = .information) {
        let time = logDateFormatter.string(from: Date())
        print("\(type.icon) \(time) – \(text)")
    }
    private static var logDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss.SS"
        return dateFormatter
    }()

}

extension Axe.type {
    var icon: Character {
        switch self {
        case .information:
            return "💬"
        case .critical:
            return "❌"
        case .warning:
            return "⚠️"
        case .unknown:
            return "❔"
        }
    }
}


public func Log(_ text: String) {
    Axe.chop(text)
}
