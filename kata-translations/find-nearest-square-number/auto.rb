input = <<-FOO
Test.assertEquals(nearestSq(1),1)
Test.assertEquals(nearestSq(2),1)
Test.assertEquals(nearestSq(10),9)
Test.assertEquals(nearestSq(111),121)
Test.assertEquals(nearestSq(9999),10000)
FOO


def auto x
    x.split("\n")
    .map{|x| 
        r = /.*nearestSq\((\d+)\)\,(\d+)\).*/
        x.gsub(r){ "assert.are.same(#{$2}, solution.nearest_sq(#{$1}))" }
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