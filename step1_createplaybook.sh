# create a playbook for Part 2
ansible-galaxy install -r requirement.yml -p roles/

#Run the playbook
ansible-playbook docker.yaml

