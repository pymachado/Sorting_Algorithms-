// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
/**
    @author Pedro Machado
    @notice Bubble sort, sometimes referred to as sinking sort, 
    is a simple sorting algorithm that repeatedly steps through the list, 
    compares adjacent elements and swaps them if they are in the wrong order. 
    The pass through the list is repeated until the list is sorted.
 */

library BubbleSort {

    function bubbleSort(uint[] memory array) internal pure returns(uint[] memory){
        require(array.length != 0, "BubbleSort: Array is empty");
        uint count = array.length;
        while (count > 0) {
            for (uint i = 1; i <= array.length - 1; i++) {
                if (array[i] < array[i-1]) {
                    uint val = array[i-1];
                    array[i-1] = array[i];
                    array[i] = val;
                }
            }
            count --;
        }
        return array;        
}

contract Example {
    
    function fooSort(uint[] memory list) public pure returns(uint[] memory) {
        BubbleSort.bubbleSort(list);
        return list;
    }

}