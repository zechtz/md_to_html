def main
  paths.each do |path|
    content = File.read(path)
    compiled = RDiscount.new(content).to_html 
    new_path = path.sub(/\.md$/,".html")
    File.write(new_path, compiled)
  end
end
