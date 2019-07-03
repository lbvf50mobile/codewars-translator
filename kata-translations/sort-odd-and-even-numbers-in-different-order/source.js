function sortArray(array) {
  let even = array.filter( x => 0 == x%2).sort((a,b)=>b-a);
  let odd = array.filter( x => 0 != x%2).sort((a,b)=>a-b);
  let even_index = array.map((x,i)=> 0 == x%2 ? i : null).filter( x => x != null);
  let odd_index = array.map((x,i) => 0 != x%2 ? i : null).filter( x => x != null);
  let answer = [...Array(array.length).keys()]
  odd.forEach((x,i) => answer[odd_index[i]] = x);
  even.forEach((x,i) => answer[even_index[i]] = x);
  return answer;
}
Test.assertSimilar(sortArray([5, 3, 2, 8, 1, 4, 11]), [1, 3, 8, 4, 5, 2, 11])
Test.assertSimilar(sortArray([2, 22, 37, 11, 4, 1, 5, 0]), [22, 4, 1, 5, 2, 11, 37, 0])
Test.assertSimilar(sortArray([1, 111, 11, 11, 2, 1, 5, 0]),[1, 1, 5, 11, 2, 11, 111, 0])
Test.assertSimilar(sortArray([]),[])
Test.assertSimilar(sortArray([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]),[1, 8, 3, 6, 5, 4, 7, 2, 9, 0])
Test.assertSimilar(sortArray([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),[8, 1, 6, 3, 4, 5, 2, 7, 0, 9])
Test.assertSimilar(sortArray([0, 1, 2, 3, 4, 9, 8, 7, 6, 5]),[8, 1, 6, 3, 4, 5, 2, 7, 0, 9])

function getArray(length){
  var arr = [];
  
  while (arr.length < length) {
    arr.push(Math.round(Math.random() * 100));
  }
  
  return arr;
}

function validateArray(array) {
  var odd = array.filter(elem => elem % 2 !== 0).sort((a, b) => a - b);
  var even = array.filter(elem => elem % 2 === 0).sort((a, b) => b - a);
  return array.map(elem => elem % 2 === 0 ? even.shift() : odd.shift());
}

const firstArray = getArray(Math.round(Math.random() * 10));
const secondArray = getArray(Math.round(Math.random() * 20));
const thirdArray = getArray(Math.round(Math.random() * 30));

Test.assertSimilar(sortArray(Array.from(firstArray)),validateArray(firstArray))
Test.assertSimilar(sortArray(Array.from(secondArray)),validateArray(secondArray))
Test.assertSimilar(sortArray(Array.from(thirdArray)),validateArray(thirdArray))
//////////////////////
Test.assertSimilar(sortArray([5, 3, 2, 8, 1, 4, 11]), [1, 3, 8, 4, 5, 2, 11])
Test.assertSimilar(sortArray([2, 22, 37, 11, 4, 1, 5, 0]), [22, 4, 1, 5, 2, 11, 37, 0])
Test.assertSimilar(sortArray([1, 111, 11, 11, 2, 1, 5, 0]),[1, 1, 5, 11, 2, 11, 111, 0])
Test.assertSimilar(sortArray([]),[])