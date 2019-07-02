let betterThanAverage = (a,b) => a.reduce((a,b) => a+b,0)/a.length < b;
Test.describe("Basic Tests", function() {
  Test.it("betterThanAverage([2, 3], 5) should return True", function() {
    Test.assertEquals(betterThanAverage([2, 3], 5), true);
  });
  
  Test.it("betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75) should return True", function() {
    Test.assertEquals(betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75), true);
  });
  
  Test.it("betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69) should return True", function() {
    Test.assertEquals(betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69), true);
  });
});
Test.describe("Random Tests", function() {
  function solution(classPoints, yourPoints) {
    return classPoints.reduce((acc, points) => acc + points - yourPoints, 0) < 0;
  }
  
  for (let i = 0; i < 40; ++i) {
    let arr = Array.from({length: 50},() => ~~(Math.random() * 100));
    let points = ~~(Math.random() * 100);
    let result = solution(arr, points);
    Test.assertEquals(betterThanAverage(arr.slice(), points), result, `Failed for ${arr}`);
  }
});

Test.describe("Example Tests", function() {
  Test.it("betterThanAverage([2, 3], 5) should return True", function() {
    Test.assertEquals(betterThanAverage([2, 3], 5), true);
  });
  
  Test.it("betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75) should return True", function() {
    Test.assertEquals(betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75), true);
  });
  
  Test.it("betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 9) should return False", function() {
    Test.assertEquals(betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 9), false);
  });
});