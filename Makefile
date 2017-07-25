all:
	sh scripts/update-json.sh
	/usr/bin/ruby scripts/erb2html.rb < src/index.html.erb > docs/index.html
	sh scripts/apply-lint.sh
	open 'karabiner://karabiner/assets/complex_modifications/import?url=file%3A%2F%2F%2FUsers%2Fzx%2Fstudy%2FzxGit%2FKE-complex_modifications%2Fdocs%2Fjson%2Fzx.json'

rebuild:
	touch src/json/*
	$(MAKE) all
