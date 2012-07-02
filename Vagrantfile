Vagrant::Config.run do |config|
  config.vm.box_url = "http://vagrant-promet.s3.amazonaws.com/debian-60.box"
  config.vm.box = "debian-60"
  
  config.vm.customize ["modifyvm", :id, "--memory", "512"]
  
  config.vm.forward_port 80, 8080
  config.vm.share_folder("v-root", "/vagrant", ".")
  #config.vm.share_folder("v-root", "/vagrant", ".",:nfs => true)

  config.vm.provision :chef_solo do |chef|
    # This path will be expanded relative to the project directory
    chef.cookbooks_path = ["cookbooks"]
    chef.roles_path = "roles"
    chef.log_level = :info

    chef.add_role("drupal")
    # This is basically the Vagrant role.
    chef.json.merge!({
        :www_root => '/vagrant/public',
        :mysql => {
          :server_root_password => "rootpass",
          :server_repl_password => "replpass",
          :server_debian_password => "debianpass"
        },
        :drupal => {
          :db => {
            :password => "drupalpass"
            },
            :dir => "/vagrant/sites/mydev"
        },
        :hosts => {
          :localhost_aliases => ["drupal.vbox.local", "dev-site.vbox.local"]
        }
      })
  end
end
