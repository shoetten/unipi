.DEFAULT_GOAL := provision

setup:
	python3 -m venv venv
	./venv/bin/pip install -r ansible-requirements.txt
	./venv/bin/ansible-galaxy install --force -r galaxy-requirements.yml

firstrun:
	./venv/bin/ansible-playbook -i inventory --user ubuntu -K --ask-vault-pass -e ansible_ssh_port=22 site.yml

provision:
	./venv/bin/ansible-playbook \
    -i inventory --ask-vault-pass -K \
     $(if $(ARGS),--tags=\'$(ARGS)\',) \
     site.yml

clean:
	rm -rf venv/ vendor/

.PHONY: clean firstrun provision

.SILENT:
