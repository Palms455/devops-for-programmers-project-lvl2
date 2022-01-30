install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook playbook.yml --tags=deploy -i inventory.ini --ask-vault-pass