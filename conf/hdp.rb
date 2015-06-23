{
    :hdp_ambari => "2.0.0",
    :hdp_os => "centos6",
    :hdp_stack => "2.2",
    :hdp_update => "2.2.4.2",
    :hdp_util => "1.1.0.20",
    :vagrant_provider => "azure", # "virtualbox",
    :azure_mgmt_certificate => "/Users/hkropp/.ssh/xxxxxxx.pem",
    :azure_mgmt_endpoint => "https://management.core.windows.net",
    :azure_subscription_id => "xxxxx-xxxx-xxxxx-xxxxx-xxxxxxxxx",
    :azure_cloud_service_name => "hdp-vagrant-demo",
    :azure_vm_user => "hdpuser",
    :azure_vm_virtual_network_name => "hwx-net",
    :azure_storage_acct_name => "hpdimages",
    :azure_service_name => "hwx-hdp-cluster",
    :azure_vm_location => "West Europe",
    :azure_ssh_port => "22",
    :azure_ssh_private_key_file => "/Users/hkropp/.ssh/xxxx.key",
    :azure_ssh_certificate_file => "/Users/hkropp/.ssh/xxxx.pem",
    :ambari_node => "n01-hdp-vagrant-demo.cloudapp.net", #"one.hdp",
}
