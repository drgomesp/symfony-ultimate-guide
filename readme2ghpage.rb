#!/usr/bin/env ruby
 
Encoding.default_external = Encoding::UTF_8
 
# checkout the readme from the master branch
`git checkout gh-pages; git checkout master GUIDE.md`
 
path = `pwd`.gsub(/\n/, "")
readme_path = File.join(path, "GUIDE.md")
index_path = File.join(path, "index.md")
 
# write the index readme file
File.open readme_path, "r" do |readme|
  File.open index_path, "w" do |index|
 
    # write the jekyll front matter
    index.puts "---"
    index.puts "layout: main"
    index.puts "---"
 
    readme.readlines.each do |line|
 
      # convert backticks to liquid
      %w(bash ruby).each do |lang|
        line.gsub!("```#{lang}", "{% highlight #{lang} %}")
      end
      line.gsub!("```", "{% endhighlight %}")
 
      # convert headers so they are linkable
      if line =~ /^#+/
        leader = line[0, line.index(/\s/)]
        text = line[line.index(/\s./)..-1].strip
        line = "#{leader} #{text} {##{text.downcase.gsub(/\s/, "-")}}"
      end
 
      index.puts line
    end
  end
end
 
# remove the readme
`git reset HEAD GUIDE.md; rm GUIDE.md`