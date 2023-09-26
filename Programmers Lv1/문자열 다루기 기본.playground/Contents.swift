func solution(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else { return false }
    
    guard s.filter({Int(String($0)) != nil }).count == s.count else { return false }
    
    return true
}

solution("a234")
solution("1234")


// 왜... 런타임 오류일까?
func solution2(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else { return false }
    
    guard s.compactMap({Int(String($0))}).count == s.count else { return false }
    
    return true
}

// 이런 풀이방법이??!!
func solution3(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}
