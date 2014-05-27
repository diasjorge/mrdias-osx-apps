execute "install emacs" do
  user node['current_user']
  command "brew install emacs --HEAD --use-git-head --cocoa --srgb"
end

execute "symlink emacs to Applications" do
  user node['current_user']
  command "ln -s `brew --prefix emacs`/Emacs.app /Applications"
  not_if { File.exist? "/Applications/Emacs.app" }
end
