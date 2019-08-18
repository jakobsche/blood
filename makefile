# command: make deploy TargetCPU=<parameter> TargetOS=<parameter> ExeExt=<parameter>

Target = $(TargetCPU)-$(TargetOS)

# archive of executable version ready to deploy
#==============================================

DEPLOY: deploy/$(Target).zip

deploy/$(Target).zip: deploy deploy/$(Target)/blood$(ExeExt) deploy/$(Target)/LICENSE.md deploy/$(Target)/README.md
	pushd deploy
	echo $(PWD)
	zip -r $(Target).zip $(Target)
	echo $(PWD)
	popd
	echo $(PWD)
	
deploy:
	mkdir -p deploy

deploy/$(Target)/blood$(ExeExt): lib/$(Target)/blood$(ExeExt) deploy/$(Target)
	strip -o deploy/$(Target)/blood$(ExeExt) lib/$(Target)/blood$(ExeExt)

lib/$(Target)/blood$(ExeExt): blood.lpi
	lazbuild blood.lpi

deploy/$(Target): deploy
	mkdir -p deploy/$(Target)

deploy/$(Target)/LICENSE.md: LICENSE.md
	cp -u LICENSE.md deploy/$(Target)/
	
deploy/$(Target)/README.md: README.md
	cp -u README.md deploy/$(Target)/
