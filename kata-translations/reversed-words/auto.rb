input = <<-FOO
Test.assertEquals(reverseWords("hello world!"), "world! hello")
      Test.assertEquals(reverseWords("yoda doesn't speak like this" ),  "this like speak doesn't yoda")
      Test.assertEquals(reverseWords("foobar"                       ),  "foobar")
      Test.assertEquals(reverseWords("kata editor"                  ),  "editor kata")
      Test.assertEquals(reverseWords("row row row your boat"        ),  "boat your row row row")
FOO


def auto x
    x.split("\n")
    .map{|x| 
        r = /.*"(.+)".*"(.+)".*/
        x.gsub(r){ "assert.are.same('#{$2}', solution.reverse_words('#{$1}'))" }
    }
    .join("\n") + "\n"
end



puts auto(input)

# https://www.codewars.com/kata/5d10941f0fb98b002821acc1/edit/ruby