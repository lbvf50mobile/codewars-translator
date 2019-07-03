input = <<-FOO
Test.assertSimilar(sortArray([5, 3, 2, 8, 1, 4, 11]), [1, 3, 8, 4, 5, 2, 11])
Test.assertSimilar(sortArray([2, 22, 37, 11, 4, 1, 5, 0]), [22, 4, 1, 5, 2, 11, 37, 0])
Test.assertSimilar(sortArray([1, 111, 11, 11, 2, 1, 5, 0]),[1, 1, 5, 11, 2, 11, 111, 0])
Test.assertSimilar(sortArray([]),[])
FOO


def auto x
    x.split("\n")
    .map{|x| 
        r = /.*\[(.*)\]\)\,\s*\[(.*)\].*/
        x.gsub(r){ "assert.are.same({#{$2}}, solution.sort_array({#{$1}}))" }
    }
    .join("\n") + "\n"
end
def auto_ruby x
    x.split("\n")
    .map{|x| 
        r = /.*(\[.*\]).*(true|false).*/
        x.gsub(r){ "Test.assert_equals(validate_sequence(#{$1}), #{$2})" }
    }
    .join("\n") + "\n"
end




# puts auto(input)
puts auto(input)

# https://www.codewars.com/kumite/5d12e46e0fb98b00182f644f/edit