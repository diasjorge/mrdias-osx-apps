dmg_package "PCKeyboardHack" do
  volumes_dir "PCKeyboardHack-9.0.0"
  owner node['current_user']
  source "https://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-9.0.0.dmg"
  checksum "7d7c0de605eb542b5529ac11058b5147b285c04c"
  type "pkg"
  action :install
end
