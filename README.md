#Objective: Develop a bash script to orchestrate the automated deployment of two Vagrant-based Ubuntu systems, designated as 'Master' and 'Slave', with an integrated LAMP stack on both systems.
#Deploy 2 ubuntu systems
#image path
#user creation and privileges
# User Management Script (user_management.sh)

This is a shell provisioning script that automates the addition of a 'altschool' user and grants it root privileges by adding it to the sudoers group on the 'Master' node. This script uses the `useradd` command with the `-m` flag and the `usermod` command with the `-aG` flags.

## Usage

To use this script, add it to the Vagrantfile provisioning section for the machine you are using. Here's how to do it:

```ruby
master01.vm.provision "shell", path: "user_management.sh"
```

The script will run automatically when you start the host VM using the following command:

```bash
vagrant up --provision
```

## Installation and Dependencies

Before running this script, make sure you have the following dependencies installed:

- [Vagrant](https://www.vagrantup.com/)
- A Linux-based operating system as the host machine

## Examples

Here are a few usage examples to illustrate how the `user_management.sh` script works:

1. **Basic Usage:**

   Add the script to your Vagrantfile and run `vagrant up --provision`:

   ```ruby
   master01.vm.provision "shell", path: "user_management.sh"
   ```



#process montoring
# Process Monitor Script (process_monitor.sh)

This shell provisioning script automates the display of an overview of the process management, showcasing currently running processes using the `ps aux` command.

## Usage

To use this script, follow these steps:

1. Add the script to the Vagrantfile provisioning for the machine you are using like so:

   ```ruby
   master01.vm.provision "shell", path: "process_monitor.sh"
   ```

2. The script should run automatically once the host VM is started using the following command:

   ```bash
   vagrant up --provision
   ```

## Installation and Dependencies

Before using this script, ensure the following dependencies are met:

- [Vagrant](https://www.vagrantup.com/) is installed.
- A Linux-based operating system is required for the script to run.

## Examples

Here are some usage examples to illustrate how the `process_monitor.sh` script works:

1. Add the script to your Vagrantfile provisioning:

   ```ruby
   master01.vm.provision "shell", path: "process_monitor.sh"
   ```

2. Start the Vagrant VM and trigger the provisioning:

   ```bash
   vagrant up --provision
   ```

This will automatically run the `process_monitor.sh` script and display an overview of currently running processes.



#LAMP installation script (deploy.sh)

# deploy.sh - LAMP Server Deployment Automation

## Description

`deploy.sh` is a shell provisioning script that automates the deployment of a LAMP (Linux, Apache, MySQL, PHP) server. It's designed to make setting up a LAMP environment on a Vagrant virtual machine quick and easy.

## Usage

To use this script, follow these steps:

1. Add the script to the Vagrantfile provisioning section for the virtual machine you are using, like so:

   ```ruby
   slave.vm.provision "shell", path: "deploy.sh"
   ```

2. Start the host VM using the `vagrant up --provision` command. This will automatically run the `deploy.sh` script during the provisioning process.

3. To verify the success of the script, SSH into the VM and check if the necessary dependencies were installed. You can do this by typing the following commands with `-v` or `--version` arguments:

   - Check if Apache is installed:
     ```bash
     apache2 -v
     ```

   - Check if MySQL is installed:
     ```bash
     mysql --version
     ```

   - Check if PHP is installed:
     ```bash
     php -v
     ```

## Installation and Dependencies

This script requires the following:

- [Vagrant](https://www.vagrantup.com/): Vagrant is used to manage virtual machines.
- A Linux-based operating system for the host VM (e.g., Ubuntu, CentOS).

Ensure that Vagrant is installed on your system and you have the necessary base box with your preferred Linux OS.

## Examples

Here are some examples to help you understand how to use the `deploy.sh` script:

- **Vagrantfile Example**: Add the script to your Vagrantfile provisioning:

   ```ruby
   slave.vm.provision "shell", path: "deploy.sh"
   ```

- **Provision the VM**: Start the virtual machine with provisioning:

   ```bash
   vagrant up --provision
   ```

   This will automatically execute the `deploy.sh` script during VM setup.

- **Verify Installation**: After the VM is up, SSH into it and check if the LAMP components are installed:

   ```bash
   vagrant ssh
   ```

   Then, within the VM:

   ```bash
   apache2 -v
   mysql --version
   php -v
   ```





## References

- [Vagrant Documentation](https://www.vagrantup.com/docs)
- [LAMP Stack - Wikipedia](https://en.wikipedia.org/wiki/LAMP_(software_bundle))




