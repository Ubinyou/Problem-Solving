class Solution {
func runningSum(_ nums: [Int]) -> [Int] {
    var result = [Int](repeating: 0, count: nums.count)
    result[0] = nums[0]
    for i in 1...nums.count-1 {
        result[i] = result[i-1] + nums[i]
    }
    return result
}
}
