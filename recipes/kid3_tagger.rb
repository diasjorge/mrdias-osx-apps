dmg_package "Kid3Tagger" do
  app "kid3"
  volumes_dir "kid3-2.3.0-Darwin"
  owner node['current_user']
  source "http://downloads.sourceforge.net/project/kid3/kid3/2.3/kid3-2.3.0-Darwin.dmg?r=http%3A%2F%2Fkid3.sourceforge.net%2F&ts=1370694632&use_mirror=heanet"
  checksum "8138218a3b486737b7c4eb70fc156d692d0e159c"
  action :install
end
