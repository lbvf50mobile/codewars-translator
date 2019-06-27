puts "Create cata 'kata-boom.rb url'"

exit "please eneter url" if ARGV[0].empty?

languages = ['javascript','ruby','lua','shell','php','go']
url = ARGV[0].split(?/).reverse

dir_name = languages.include?(url.firts) ? url[1] : url.firts

`cp -rf kata-translations/template kata-translations/#{dir_name}`
`echo "#{url}" > kata-translations/#{dir_name}/urls.md `
