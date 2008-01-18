PWD = `pwd`.chomp

desc "deploy home directory"
task "home" do
    DEST = File.join(PWD, "home")
    Dir.foreach(DEST) do |file|
        next unless file[0] == "_"
        fullpath = File.join(DEST, file)
        `cd $HOME && ln -s #{fullpath} #{file.gsub(/^_/, '.')}`
    end
end
