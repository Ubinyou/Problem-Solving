/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var pre = head
        var crnt = pre?.next
        while crnt != nil{
            if pre?.val == crnt?.val{
                pre?.next = crnt?.next
            }else{
                pre = crnt
            }
            crnt = crnt?.next
        }
        return head
    }
}
