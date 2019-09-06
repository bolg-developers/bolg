__branch/release/new:
ifdef RELEASE_NUM
	git checkout -b release/$(RELEASE_NUM)
	git commit --allow-empty -m ":tada: new release branch"
	git push -u origin release/$(RELEASE_NUM)
else
	echo 'you must set RELEASE_NUM'
endif

__branch/scram/new:
ifdef RELEASE_NUM
	echo ok1
ifdef SCRAM_NUM
	echo ok2
endif
else
	echo ng
endif
