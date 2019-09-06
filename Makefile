__branch/release/new:
ifdef RELEASE_NUM
	git checkout -b release/v$(RELEASE_NUM)
	git commit --allow-empty -m ":tada: new release branch"
	git push -u origin release/v$(RELEASE_NUM)
else
	echo 'you must set RELEASE_NUM'
endif

__branch/scram/new:
ifdef RELEASE_NUM
ifdef SCRAM_NUM
	git checkout -b release/v$(RELEASE_NUM)/scram/$(SCRAM_NUM)
	git commit --allow-empty -m ":tada: new scram branch"
	git push -u origin release/v$(RELEASE_NUM)/scram/$(SCRAM_NUM)
else
	echo 'you must set SCRAM_NUM'
endif
else
	echo 'you must set RELEASE_NUM'
endif
