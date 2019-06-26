input = <<-FOO
Test.assertEquals(reverseWords("hello world!"), "world! hello")
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
FOO


def auto x
    x.split("\n")
    .map{|x| 
        r = /.*(\[.*\]).*(true|false).*/
        x.gsub(r){ "assert.are.same(\"#{$2}\", solution.reverse_words(\"#{$1}\"))" }
    }
    .join("\n") + "\n"
end



puts auto(input)

# https://www.codewars.com/kata/5d10941f0fb98b002821acc1/edit/ruby