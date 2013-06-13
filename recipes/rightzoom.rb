unless File.exists?("/Applications/RightZoom.app")
  remote_file "#{Chef::Config[:file_cache_path]}/RightZoom.zip" do
    source "https://www.macupdate.com/download/30591/RightZoom.zip"
    mode "0644"
  end

  # start up on login
  execute "Start RightZoom automatically" do
    command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '{ \"Path\" = \"/Applications/RightZoom.app\"; \"Hide\" = 0; }'"
    user node['current_user']
  end

  execute "unzip RightZoom" do
    command "unzip #{Chef::Config[:file_cache_path]}/RightZoom.zip RightZoom.app/* -d /Applications/"
    user node['current_user']
    group "admin"
  end
end
