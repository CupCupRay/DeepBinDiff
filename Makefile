test:
	@echo "Compare files (by Author) with outputDir ./output/"
	@python ./src/deepbindiff.py --input1 ./experiment_data/coreutils/binaries/coreutils-5.93-O0/chroot --input2 ./experiment_data/coreutils/binaries/coreutils-5.93-O1/chroot --outputDir ./output/ | tee ./output/text_log.log
	@echo "=================================test results================================="
	@cat ./output/text_log.log

self:
	@echo "Compare files (the same exe file) with outputDir ./output/"
	@python ./src/deepbindiff.py --input1 ./experiment_data/exefiles/t1.exe --input2 ./experiment_data/exefiles/t2.exe --outputDir ./output/ | tee ./output/exe_log.log
	@echo "=================================test results================================="
	@cat ./output/exe_log.log

