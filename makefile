# command: make deploy TargetCPU=<parameter> TargetOS=<parameter> ExeExt=<parameter>

Target = $(TargetCPU)-$(TargetOS)

# archive of executable version ready to deploy
#==============================================

DEPLOY: deploy/$(Target).zip

deploy/$(Target).zip: deploy deploy/$(Target)/blood$(ExeExt) deploy/$(Target)/LICENS.md deploy/$(Target)/README.md
	pushd deploy
	zip $(Target).zip $(Target)
	popd

deploy:
	mkdir deploy

deploy/$(Target)/blood$(ExeExt): lib/$(Target)/blood$(ExeExt) deploy/$(Target)
	strip -o deploy/$(Target)/blood$(ExeExt) lib/$(Target)/blood$(ExeExt)

lib/$(Target)/blood$(ExeExt): blood.lpi
	lazbuild blood.lpi

deploy/$(Target): deploy
	mkdir deploy/$(Target)
