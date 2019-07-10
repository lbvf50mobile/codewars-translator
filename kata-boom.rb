puts "Create kata 'kata-boom.rb url method_name'"

exit "please eneter url" if ARGV[0].empty?

languages = ['javascript','ruby','lua','shell','php','go']
url = ARGV[0].split(?/).reverse

dir_name = languages.include?(url.first) ? url[1] : url.first

`cp -rf kata-translations/template kata-translations/#{dir_name}`
`echo "#{ARGV[0]}" > kata-translations/#{dir_name}/urls.md `

require 'colorize'
pattern = "shape_area20190710"
replace = "shape_area"
replace = ARGV[1] if(ARGV[1])
file_set = %w(sample_test_cases.lua  solution.lua  solution_setup.lua  test_cases.lua auto.rb)
puts "replace %s with %s in %s" % [pattern.red, replace.green, file_set.to_s.yellow]
dir = "kata-translations/#{dir_name}"
file_set.each do |file_name|
    file_path = dir + "/" + file_name
    File.write(file_path,File.readlines(file_path).map{|line| line.gsub(pattern,replace)}.join(""))
end