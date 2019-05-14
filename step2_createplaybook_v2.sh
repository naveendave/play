#create inventory file
echo "[docker_images]" > inventory.yml
ansible-playbook -i ./docker.py docker_inventory.yml  2>&1|  grep -v "WARNING" | grep "IBM_CONTAIN" | grep -v "docker.sock" | cut -f2 -d"|" >> inventory.yml

#run the playbook against the docker inventory
ansible-playbook -i inventory.yml docker_v2.yaml



