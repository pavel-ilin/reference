//  Definition for singly-linked list.
//  function ListNode(val, next) {
//      this.val = (val===undefined ? 0 : val)
//      this.next = (next===undefined ? null : next)
// }

var mergeKLists = function(lists) {
    if (lists.length === 0) {
      return null;
    }
    
   while(lists.length > 1) {
       let a = lists.shift()
       let b = lists.shift()
       let merged = mergeArrays(a, b)
       lists.push(merged)   
   }
      
      return lists[0]
  }
  
  const mergeArrays = (a, b) => {
      let dummy = new ListNode(0)
      let current = dummy
      
      while (a && b) {
         if (a.val < b.val){
             current.next = a
             a = a.next
         } else {
             current.next = b
             b = b.next
         }
          current = current.next
      }
      current.next = a || b
      return dummy.next
  }