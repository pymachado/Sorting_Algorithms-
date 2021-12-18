# Sorting Algorithms
**This is a repo written in Solidity to implement Sorting Algorithms to be used in DeFI projects that need it. Each Library represents a different algorithm.**

## Bubble Sort
**Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted. https://en.wikipedia.org/wiki/Bubble_sort**

### To be use it
 
function fooSort(uint[] memory list) public pure returns(uint[] memory) {
    BubbleSort.bubbleSort(list);
        return list;
}