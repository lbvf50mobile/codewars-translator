input = <<-FOO
Test.assertSimilar(countBy(1,10), [1,2,3,4,5,6,7,8,9,10], "Array does not match")
Test.assertSimilar(countBy(2,5), [2,4,6,8,10], "Array does not match")
Test.assertSimilar(countBy(3,7), [3,6,9,12,15,18,21], "Array does not match")
Test.assertSimilar(countBy(50,5), [50,100,150,200,250], "Array does not match")
Test.assertSimilar(countBy(100,6), [100,200,300,400,500,600], "Array does not match")
FOO


def auto x
    x.split("\n")
    .map{|x| 
        r = /.*countBy\(([0-9,]+)\)\, \[([0-9,]+)\].*/
        x.gsub(r){ "assert.are.same({#{$2}}, solution.count_by(#{$1}))" }
    }
    .join("\n") + "\n"
end

puts auto(input)

# https://www.codewars.com/kata/5d10941f0fb98b002821acc1/edit/ruby