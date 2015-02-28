# Introduction

This repo contains code for a hands-on introduction to Vagrant and Puppet. It assumes no prior knowledge of either of them.

# Requirements

There are a few things you will need to have installed...

- VirtualBox 4.3+ (do not use 4.3.10 as there is a known issue with it)
- Vagrant 1.6+
- vagrant-vbguest plugin (install with "vagrant plugin install vagrant-vbguest")
- Xcode 5+ (Mac only)

To make sure that Vagrant is now available, type the following...

    vagrant version

If you get output including Vagrant's version, you should be good to go.

# Creating the virtual machine

The next step is to use Vagrant to create a virtual machine in VirtualBox using the included Vagrantfile. Change into the "/vagrant" directory in this repository and type the following...

    vagrant status

You should see output informing you that the "hands-on" machine is not created. There are a few settings in the Vagrantfile that you'll want to check before creating the VM. All of them are located near the top of the file with explanatory comments.

To start creating the VM, type the following...

    vagrant up

This will kick off a lengthy process which starts with downloading the Vagrant base box that we'll be using. This is an Ubuntu 14.04 disk image that is roughly 360MB in size. Depending on the speed of your Internet connection, this may or may not take a while. After the base box has been downloaded, Vagrant will use it to create the VM in VirtualBox.

Once this is finished, Vagrant will run the provisioners. There are two provisioners in this Vagrantfile. The first one is a simple shell provisioner which just runs a command to update the package list on the VM. The second one is Puppet which will apply all of the included Puppet configuration.

Assuming all goes well, the process will complete and you'll be back at your command prompt. Try the "vagrant status" command again and you should see that the "hands-on" box is in a running state. Now you can connect to the VM via SSH with the following command...

    vagrant ssh

# To-do

I need to add more info about where to go from here as well as some links to good Puppet tutorials.

