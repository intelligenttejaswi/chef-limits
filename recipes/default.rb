#
# Cookbook Name:: limits
# Recipe:: default
#

template "#{node["security"]["limits"]["limits_path"]}" do
    source "limits.conf.erb"
    mode 0644
    owner "root"
    group "root"
end
