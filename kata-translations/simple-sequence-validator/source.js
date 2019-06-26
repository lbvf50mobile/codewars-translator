// https://www.codewars.com/kata/simple-sequence-validator/javascript
// https://www.codewars.com/kumite/5d12e46e0fb98b00182f644f/edit
// https://www.codewars.com/kata/simple-sequence-validator
let  validateSequence = x => {
  let a = x.slice(0,x.length-1).map((z,i) => x.slice(i,i+2))
  let v = a[0][0] - a[0][1]
  
  console.log(a,v)
  return a.slice(1,x.length).every(([a,b]) => v == a - b);
}
Test.assertSimilar(validateSequence([1,2,3,4,5,8,7,8,9]), false, "Sequence is invalid")
Test.assertSimilar(validateSequence([2,8,6,7,4,3,1,5,9]), false, "Sequence is invalid")
Test.assertSimilar(validateSequence([1,2,3,4,5,6,7,8,9]), true, "Sequence is valid")
Test.assertSimilar(validateSequence([0,1,2,3,4,5,6,7,8]), true, "Sequence is valid")
Test.assertSimilar(validateSequence([1,3,5,7,9,11,13,15]), true, "Sequence is valid")
Test.assertSimilar(validateSequence([1,3,5,7,8,12,14,16]), false, "Sequence is invalid")
Test.assertSimilar(validateSequence([0,1,1,2,3,5,8,13,21,34]), false, "Sequence is invalid")
Test.assertSimilar(validateSequence([0,2,4,6,8]), true, "Sequence is valid")
Test.assertSimilar(validateSequence([2,4,6,8,10]), true, "Sequence is valid")
Test.assertSimilar(validateSequence([2,4,6,8,10,12,14,16,18,20]), true, "Sequence is valid")
Test.assertSimilar(validateSequence([2,4,6,8,10,12,14,16,18,22]), false, "Sequence is invalid")
Test.assertSimilar(validateSequence([2,4,6,8,10,12,13,16,18,20]), false, "Sequence is invalid")
Test.assertSimilar(validateSequence([3,7,9]), false, "Sequence is invalid")
Test.assertSimilar(validateSequence([3,6,9]), true, "Sequence is valid")
Test.assertSimilar(validateSequence([3,6,8]), false, "Sequence is invalid")
Test.assertSimilar(validateSequence([50,100,200,400,800]), false, "Sequence is invalid")
Test.assertSimilar(validateSequence([50,100,150,200,250]), true, "Sequence is valid")
Test.assertSimilar(validateSequence([100,200,300,400,500,600]), true, "Sequence is valid")

/*
# https://gist.github.com/lbvf50mobile/ed49bd6ac09779cfbbfbbcd8d7ec0718
def s x
  cons = x.each_cons(2).to_a
  diff = cons.first[0] - cons.first[1]
  cons.all?{|x,y| diff == x-y}
end
describe "Asert Similar" do
  it "Static" do
    Test.assert_equals(validate_sequence([1,2,3,4,5,6,7,8,9]), true)
Test.assert_equals(validate_sequence([0,1,2,3,4,5,6,7,8]), true)
Test.assert_equals(validate_sequence([1,3,5,7,9,11,13,15]), true)
Test.assert_equals(validate_sequence([1,3,5,7,8,12,14,16]), false)
Test.assert_equals(validate_sequence([0,1,1,2,3,5,8,13,21,34]), false)
Test.assert_equals(validate_sequence([0,2,4,6,8]), true)
Test.assert_equals(validate_sequence([2,4,6,8,10]), true)
Test.assert_equals(validate_sequence([2,4,6,8,10,12,14,16,18,20]), true)
Test.assert_equals(validate_sequence([2,4,6,8,10,12,14,16,18,22]), false)
Test.assert_equals(validate_sequence([2,4,6,8,10,12,13,16,18,20]), false)
Test.assert_equals(validate_sequence([3,7,9]), false)
Test.assert_equals(validate_sequence([3,6,9]), true)
Test.assert_equals(validate_sequence([3,6,8]), false)
Test.assert_equals(validate_sequence([50,100,200,400,800]), false)
Test.assert_equals(validate_sequence([50,100,150,200,250]), true)
Test.assert_equals(validate_sequence([100,200,300,400,500,600]), true)
  end
  it "Auto true" do
    50.times do
      size = rand(3..100)
      diff = rand(1..50000)
      arr = ([rand(1..50)] * size).map.with_index(0){|x,i| x + i*diff }
      Test.assert_equals(validate_sequence(arr), s(arr))
    end
  end
  it "Auto false" do
    50.times do
      arr = (0..rand(3..100)).to_a.shuffle
      Test.assert_equals(validate_sequence(arr), s(arr)) if arr != arr.sort && arr != arr.sort.reverse
    end
  end
end
*/