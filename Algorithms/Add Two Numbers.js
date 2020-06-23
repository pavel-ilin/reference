/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */

const addTwoNumbers = (l1, l2) => {
    let rootNode = new ListNode(0);
    let node = rootNode;
    let sum = 0;
    let carry = 0;

    while(l1 || l2){

        if (l1){
            sum += l1.val;
            l1 = l1.next;
        }
        if (l2){
            sum += l2.val;
            l2 = l2.next;
        }
        if(sum > 9){
            carry = 1;
            sum = sum - 10;
        }

        node.next = new ListNode(sum);
        node = node.next;

        sum = carry;
        carry = 0;
    }

    return rootNode.next;
};