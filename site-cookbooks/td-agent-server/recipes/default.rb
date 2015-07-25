directory "/etc/td-agent/conf.d" do
  mode "0755"
end

template "/etc/td-agent/td-agent.conf" do
  mode "0644"
  source "override_td-agent.conf.erb"
  notifies :restart, "service[td-agent]"
end

template "/etc/td-agent/conf.d/server_in_forward.conf" do
  mode "0644"
  source "server_in_forward.conf.erb"
  notifies :restart, "service[td-agent]"
end
