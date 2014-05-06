update-submodules: clean-wd
	cd apps/badgekit_webhooks \
		&& git pull origin master \
		&& cd .. \
		&& git add badgekit_webhooks \
		&& git commit -m "Update badgekit_webhooks"


clean-wd:
	git status
	git diff --quiet --exit-code
	git diff --cached --quiet --exit-code

.PHONY: clean-wd update-submodules
