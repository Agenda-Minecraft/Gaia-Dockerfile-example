NAME= moekiwisama/gaia
VERSION = 0.1.1

.PHONY: build start get_paper clean

build: get_paper
	docker build -t ${NAME}:${VERSION} .
get_paper:
	mkdir temp
	wget -O "temp/paper-1.17.jar"  https://papermc.io/api/v1/paper/1.17/latest/download
clean:
	rm -rf temp
