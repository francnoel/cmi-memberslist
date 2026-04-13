deploy:
	@printf "ssh -p $(SSH_PORT) \"%s\" '%s'\n" \
		"$(SSH_USER)@$(SSH_HOST)" \
		'git -C ~/countmein.dcism.org pull'
	@sshpass -p "$(SSH_PASSWORD)" ssh -p "$(SSH_PORT)" \
		"$(SSH_USER)@$(SSH_HOST)" \
		'git -C ~/countmein.dcism.org pull'

.PHONY: deploy
