dmg_package "PlistEdit Pro" do
  volumes_dir "PlistEdit Pro"
  owner node['current_user']
  source "https://www.macupdate.com/download/14363/PlistEditPro.dmg"
  checksum "0dfdbea6a9a5841c3c045cebccbb8f8e2a569daa"
  action :install
end
