let nearestSq = x => Math.round(x**0.5)**2
Test.describe("Basic tests",() => {
  Test.assertEquals(nearestSq(1),1)
  Test.assertEquals(nearestSq(2),1)
  Test.assertEquals(nearestSq(10),9)
  Test.assertEquals(nearestSq(111),121)
  Test.assertEquals(nearestSq(9999),10000)
  
});
                   
console.log('<COMPLETEDIN::>');

Test.describe('Small Random Tests', () => {

function randSmallTests(){
    for (i=0; i<100; i++){
        var num = Math.floor(Math.random() * 200000);
        if (num>1) {
            var sol = Math.pow(Math.round(Math.pow(num,0.5)),2);
            Test.assertEquals(nearestSq(num),sol, "It should work for random inputs too");
        }
    }
}

randSmallTests();
console.log('<COMPLETEDIN::>');
});

Test.describe('Big Random Tests', () => {

function randBigTests(){
    //Test.it('Big Random Tests')
    for (j=0; j<1000; j++){
        var num = Math.floor(Math.random() * 2000000);
        if (num>499) {
            var sol = Math.pow(Math.round(Math.pow(num,0.5)),2);
            Test.assertEquals(nearestSq(num),sol, "It should work for random inputs too");
        }
    }
}
    
randBigTests();
console.log("<COMPLETEDIN::>");
});

// TODO: Replace examples and use TDD development by writing your own tests

// These are some CW specific test methods available:
//    Test.expect(boolean, [optional] message)
//    Test.assertEquals(actual, expected, [optional] message)
//    Test.assertSimilar(actual, expected, [optional] message)
//    Test.assertNotEquals(actual, expected, [optional] message)

// NodeJS assert is also automatically required for you.
//    assert(true)
//    assert.strictEqual({a: 1}, {a: 1})
//    assert.deepEqual({a: [{b: 1}]}, {a: [{b: 1}]})

// You can also use Chai (http://chaijs.com/) by requiring it yourself
// var expect = require("chai").expect;
// var assert = require("chai").assert;
// require("chai").should();