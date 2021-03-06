// https://www.codewars.com/kata/51c8991dee245d7ddf00000e
// https://www.codewars.com/kumite/5d132b9bbac0b8001e3d9d18?sel=5d132b9bbac0b8001e3d9d18
let reverseWords = x => x.split` `.reverse().join` `;
describe("reverseWords",function(){
    it("should work for some examples", function(){
      Test.assertEquals(reverseWords("hello world!"), "world! hello")
      Test.assertEquals(reverseWords("yoda doesn't speak like this" ),  "this like speak doesn't yoda")
      Test.assertEquals(reverseWords("foobar"                       ),  "foobar")
      Test.assertEquals(reverseWords("kata editor"                  ),  "editor kata")
      Test.assertEquals(reverseWords("row row row your boat"        ),  "boat your row row row")
    });
    it ("should work for random strings", function(){
      var k, r, randomString = function(n){
        var i, res = []
        for(i = 0; i < n; ++i){
          res.push(String.fromCharCode(32 + ~~(Math.random() * 95)));
        }
        return res.join('').replace(/\s+/,' ');
      }
      for(k = 0; k < 40; ++k){
        r = randomString(Math.random() * 300);
        Test.expect(reverseWords(r) == r.split(' ').reverse().join(' '), r + " wasn't reversed correctly");
      }
    });
  });
  /*
assert.are.same("world! hello", solution.reverse_words("hello world!"))
assert.are.same("this like speak doesn't yoda", solution.reverse_words("yoda doesn't speak like this"))
assert.are.same("foobar", solution.reverse_words("foobar"))
assert.are.same("editor kata", solution.reverse_words("kata editor"))
assert.are.same("boat your row row row", solution.reverse_words("row row row your boat")
*/