import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let sum = (1...count).map { $0 * price }.reduce(0, +)
    
    return Int64(money - sum >= 0 ? 0 : sum - money)
}

solution(3, 20, 4)

// 다른 문제 풀이 (왜?!?!)
func solution2(_ price:Int, _ money:Int, _ count:Int) -> Int{
    return max((count + 1) * count / 2 * price - money , 0)
}
