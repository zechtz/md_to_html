def main
  paths.each do |path|
    read
    compile
    write 
  end
end
