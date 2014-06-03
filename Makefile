sync-submodules: require-clean-wd
	cd apps/badgekit_webhooks \
		&& git pull origin master \
		&& cd .. \
		&& git add badgekit_webhooks \
		&& git commit -m "Update badgekit_webhooks"

pull:
	git pull origin master
	git submodule update --init --recursive

require-clean-wd:
	git status
	git diff --quiet --exit-code
	git diff --cached --quiet --exit-code

deploy: require-clean-wd
	git push heroku master

test:
	scripts/check_env_settings.py

.PHONY: require-clean-wd update-submodules deploy test
