puts "Create cata 'kata-boom.rb url'"

exit "please eneter url" if ARGV[0].empty?

languages = ['javascript','ruby','lua','shell','php','go']
url = ARGV[0].split(?/).reverse

dir_name = languages.include?(url.first) ? url[1] : url.first

`cp -rf kata-translations/template kata-translations/#{dir_name}`
`echo "#{ARGV[0]}" > kata-translations/#{dir_name}/urls.md `
