input = <<-FOO
Test.assertEquals(shapeArea(2),5)
Test.assertEquals(shapeArea(3),13)
Test.assertEquals(shapeArea(1),1)
Test.assertEquals(shapeArea(5),41)
FOO


def auto x
    x.split("\n")
    .map{|x| 
        r = /.*(\d+)\)\,(\d+).*/
        x.gsub(r){ "assert.are.same(#{$2}, solution.shape_area(#{$1}))" }
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