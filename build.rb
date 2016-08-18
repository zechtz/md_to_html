def main
  paths.each do |path|
    content = File.read(path)
    compiled 
    File.write(new_path, compiled)
  end
end
