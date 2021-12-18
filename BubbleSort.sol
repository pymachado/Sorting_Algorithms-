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
        require(array.length != 0, "BurbleSort: Array is null");
        for(uint i = 0; i <= array.length - 1; i++) {
            for(uint j = i+1; j <= array.length - 1; j++) {
                if(array[i] > array[j]) {
                    uint val = array[i];
                    array[i] = array[j];
                    array[j] = val;
                }
            }
        }
        return array;
    }
}

contract Example {
    
    function fooSort(uint[] memory list) public pure returns(uint[] memory) {
        BubbleSort.bubbleSort(list);
        return list;
    }

}