#
# Cookbook Name:: sudo
# Attribute File:: sudoers
#

if default[:authorization][:sudo][:groups].nil? || default[:authorization][:sudo][:groups].empty?
  default[:authorization][:sudo][:groups] = Array.new 
end
if default[:authorization][:sudo][:users].nil? || default[:authorization][:sudo][:users].empty?
  default[:authorization][:sudo][:users] = Array.new
end

default[:authorization][:sudo][:users] << "ubuntu"
#default[:authorization][:sudo][:users] << "fdrescher"
default[:authorization][:sudo][:groups] << "sysadmin"
default['authorization']['sudo']['passwordless'] = true
