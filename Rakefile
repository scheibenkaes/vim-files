
task :default do
    puts "foo"
end

$VIM_FOLDER = File.expand_path "~/.vim"
$VIM_RC = ".vimrc"

$EXCEPT_BUNDLES = ["vim-pathogen"]
$BUNDLES = Dir["*"].select {|x| File.directory? x} - $EXCEPT_BUNDLES
$BUNDLE_FOLDER = File.join($VIM_FOLDER, "bundle")

def link_bundle bundle_dir
    cd $BUNDLE_FOLDER, :verbose => false do
        bundle_name = File.basename bundle_dir
        unless File.exists? bundle_name
            ln_s bundle_dir, bundle_name 
        else
            puts "Skipping bundle #{bundle_name}"
        end
    end
end

def create_links_to_bundles
    $BUNDLES.map {|x| File.expand_path x}.each do |b|
        link_bundle b
    end
end

def install_pathogen
    pathogen_bundle_al = File.expand_path(File.join("vim-pathogen", "autoload"))
    cd $VIM_FOLDER do
        unless File.exists? "autoload"
            ln_s pathogen_bundle_al, "autoload"
        else
            puts "autoload dir already existing."
        end
    end
end

task :install do |t|
     unless File.directory? $VIM_FOLDER
         puts "Creating home folder under #{$VIM_FOLDER}"
         mkdir $VIM_FOLDER
     else
         puts "Skipped creation of #{$VIM_FOLDER}"
     end
     unless File.exists?(File.expand_path("~/#{$VIM_RC}")) 
         tmp_rc = File.join(File.dirname(__FILE__), "_vimrc")
         cd File.expand_path("~") do
             ln_s tmp_rc, $VIM_RC
         end
     else
         puts "Left out VIM_RC"
     end
     install_pathogen
     create_links_to_bundles
end

