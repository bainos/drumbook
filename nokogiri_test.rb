require './templates.rb'
require 'nokogiri'
require 'fileutils'

HTML_SOURCE = File.join(Dir::pwd , 'drumbook-web')
HTML_TARGET = File.join(Dir::pwd , 'drumbook-web-pretty')
STYLESHEET = File.join(Dir::pwd , "drumbook-web-pretty.css")

def prettyHtml(html_file)
    page = ''
    File.open(html_file) do |f|
        f.each_line do |l|
            L2H2HTemplates.templates.each do |k,v|
                 l = l.gsub(/#{k}/i,v)
            end
        page << l
        end
    end

    doc = Nokogiri::HTML.parse(page)

    if doc.css('div.container').length > 1
        doc.css('aside.left-sidebar').last.remove
        doc.css('div.container').last.remove
    end

    File.open(File.join(HTML_TARGET,File.basename(html_file)), "w") \
        { |f| f << doc.to_s.gsub(/^\s*$\n/, '').strip }
    #%x(vim node7mod.html -c "execute 'normal gg=G' | :wq")
end


unless Dir.exists?(HTML_SOURCE)
    puts "Cannot find source directory: " + HTML_SOURCE
    puts "Cannot continue: nothing to convert :("
    exit 1
end

if Dir.exists?(HTML_TARGET) then
     puts "Cleanup old stuff: " + HTML_TARGET
     FileUtils.rm_rf(HTML_TARGET)
end

Dir.mkdir(HTML_TARGET)
 
Dir[File.join(HTML_SOURCE , '*.html')].each do |node|
    puts "Converting node: " + node
    prettyHtml(node)
end

FileUtils.cp(STYLESHEET, File.join(HTML_TARGET,'style.css')) 
Dir[File.join(HTML_SOURCE, '*.gif')].each {|gif| \
    FileUtils.cp(gif,HTML_TARGET)}

####
# Search for nodes by css
#doc.css('div.navigation-panel').each do |a_tag|
#  puts a_tag
#end

####
# Search for nodes by xpath
#doc.xpath('//p/a').each do |a_tag|
#  puts a_tag.content
#end

####
# Or mix and match.
#doc.search('//p/a', 'p > a').each do |a_tag|
#  puts a_tag.content
#end

###
# Find attributes and their values
#doc.search('a').first['href']
