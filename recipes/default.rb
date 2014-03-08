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

bash "add-pam_limits.so" do
  user "root"
  code 'echo "session required pam_limits.so" >> /etc/pam.d/common-session'
  not_if 'grep "$session required pam_limits.so" /etc/pam.d/common-session'
end
