#!/usr/bin/ruby

require './templates.rb'
require 'nokogiri'
require 'fileutils'

HTML_SOURCE = File.join(Dir::pwd , 'drumbook-web')
HTML_TARGET = File.join(Dir::pwd , 'drumbook-web-pretty')
STYLESHEET = File.join(Dir::pwd , "drumbook-web-pretty.css")
CONTENTS = File.join(HTML_SOURCE, "node1.html")

def handleContents(contents_file,start_href,about_href)
    doc = Nokogiri::HTML(File.open(contents_file))
    contents = "\n<div class=\"toc\">\n"
    contents << "<ul id='start'>\n<li><a name='start' href='#{start_href}'>Start</a></li>\n</ul>" \
        unless start_href.nil?
    contents << doc.css('ul').to_s
    contents << "<ul id='about'>\n<li><a name='about' href='#{about_href}'>About..</a></li>\n</ul>" \
        unless about_href.nil?
    contents << "\n</div><!-- .toc -->\n"
    @toc = Nokogiri::HTML.parse(contents)
end

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

    start_href = nil
    about_href = nil
    doc.css('aside.left-sidebar').children.each do |child|
        unless child.at_css('img').nil?
            if child.at_css('img')['alt'] == 'up'
                start_href = child['href']
            end
        end
        if child.content.match(/About this .+/)
            about_href = child['href']
        end
        child.remove
    end

    handleContents(CONTENTS,start_href,about_href)
    @toc.at_css('div.toc').parent = doc.at_css('aside.left-sidebar')

    doc.at_css('h1').parent = doc.at_css('div.header') \
        unless doc.at_css('h1').nil?

    target_file = File.join(HTML_TARGET,File.basename(html_file)) 
    File.open(target_file, "w") \
        { |f| f << doc.to_s.gsub(/^\s*$\n/, '').strip }

    # Uncomment for source indentation
    #%x(vim #{target_file} -c "execute 'normal gg=G' | :wq")
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
    #exit 1
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
