require "rdiscount"

def convert  
  paths.each do |path|
    content =  File.read(path)
    page    =  Page.new(path, content)
    File.write(page.new_path, page.compile)
  end
end

def paths 
  Dir["*.md"]
end

class Page 
  attr_reader :path, :content 

  def initialize(path, content)
    @path    =  path
    @content =  content
  end

  def compile
    RDiscount.new(content).to_html 
  end

  def new_path
    path.sub(/\.md$/,".html")
  end
end 

# Run the main method 
convert  
