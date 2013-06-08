dmg_package "SoulseekQt" do
  volumes_dir "SoulseekQt"
  owner node['current_user']
  source "http://www.soulseekqt.net/SoulseekQT/Mac/SoulseekQt-2013-5-18.dmg"
  checksum "4805398f0959d3283f6e70fca04323ce7da3875b"
  action :install
end
