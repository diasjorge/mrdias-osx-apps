execute "install emacs" do
  user node['current_user']
  command "brew install the_silver_searcher"
end
