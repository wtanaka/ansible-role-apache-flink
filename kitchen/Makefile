DOCKER_NETWORK=flink_kitchen_nw
all: test

test: bundle galaxy
	(. venv/bin/activate; \
		docker network inspect $(DOCKER_NETWORK) || \
			docker network create -d bridge $(DOCKER_NETWORK); \
		bundle exec kitchen test; \
		docker network rm $(DOCKER_NETWORK); \
	)

galaxy: pip
	(. venv/bin/activate; \
		allpids=""; \
		for i in requirements/*.txt; do \
			ansible-galaxy install --force --ignore-errors \
				-r "$$i" -p roles/& \
			pid=$$!; \
			allpids="$$allpids $$pid"; \
		done; \
		for pid in $$allpids; do \
			wait $$pid; \
		done; \
	)

pip: venv
	(. venv/bin/activate; \
		pip install ansible \
	)

venv:
	virtualenv "$@"

bundle:
	bundle install --path vendor
