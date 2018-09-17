typealias Coordinate = (x: Int, y: Int)

let origin: [Coordinate] = [
    (x: 0, y: 0),
    (x: 1, y: 0),
    (x: 2, y: 0),
    (x: 1, y: 1),
    (x: 0, y: 2),
    (x: 1, y: 2),
    (x: 2, y: 2)
]

var offsets: [Coordinate] = {
    var off_sets = [Coordinate]()
    for i in 0...3 {
        for j in 0...3 {
            off_sets.append((x: i, y: j))
        }
    }
    return off_sets
}()

func applyTransformation(offset: Coordinate) -> [Coordinate] {
    return origin.map { (x: $0.x + offset.x, y: $0.y + offset.y) }
}

func produceSum(coords: [Coordinate], source: [[Int]]) -> Int {
    return coords.map { source[$0.y][$0.x] }.reduce(0, +)
}

struct HourGlass {
    static func hourglassSum(arr: [[Int]]) -> Int {
        return offsets
                .map { applyTransformation(offset: $0) }
                .map { produceSum(coords: $0, source: arr) }
                .sorted()
                .last ?? 0
    }
}

