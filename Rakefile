
task :default do
    puts "foo"
end

$VIM_FOLDER = "~/.vim"
$VIM_RC = ".vimrc"

task :install do |t|
     unless File.directory? $VIM_FOLDER
         puts "Creating home folder under #{$VIM_FOLDER}"
         t.mkdir $VIM_FOLDER
     else
         puts "Skipped creation of #{$VIM_FOLDER}"
     end
     unless File.exists? $VIM_RC
         tmp_rc = File.join(File.dirname(__FILE__), "_vimrc")
         cd "~" do
             ln_s tmp_rc, $VIM_RC
         end
     end
end

