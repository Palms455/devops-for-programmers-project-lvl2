install:
	ansible-galaxy role install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

remote-install:
	ansible-playbook playbook.yml --tags=install -i inventory.ini --ask-vault-pass

remote-stop:
	ansible-playbook playbook.yml --tags=stop -i inventory.ini --ask-vault-pass

deploy-ask-pass:
	ansible-playbook playbook.yml --tags=deploy -i inventory.ini --ask-vault-pass

deploy:
	ansible-playbook -i inventory.ini -v --vault-password-file vault-password playbook.yml

setup:
	touch-vault-password-file install

touch-vault-password-file:
	touch vault-password


encrypt-vault:
	ansible-vault encrypt $(FILE) --vault-password-file vault-password

decrypt-vault:
	ansible-vault decrypt $(FILE) --vault-password-file vault-password

view-vault:
	ansible-vault view $(FILE) --vault-password-file vault-password

edit-vault:
	ansible-vault edit $(FILE) --vault-password-file vault-password

create-vault:
	ansible-vault create $(FILE) --vault-password-file vault-password
