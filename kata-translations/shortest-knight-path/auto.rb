a = []
(?a..?h).each{|c|
    (1..8).each{|r| a.push "#{c}#{r}" }
}
puts a.map{|x| "#{x}=true"}.each_slice(8).map{|x| x.join(",") + ','}.tap{|x| x[-1] = x[-1][0..-2]}.join("\n")


# https://www.codewars.com/kumite/5d12e46e0fb98b00182f644f/edit