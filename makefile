SOURCE = colorama.sh
PKG_NAME = colorama
SUPPORT = Readme.md
PATCH = /data/data/com.termux/files/usr/bin/

# author : polygon

# note : sesuaikan variable patch dengan patch binary anda


install: uninstall
		apt update
		apt full-upgrade
		apt-get install util-linux
		chmod 777 colorama.sh
		cp colorama.sh colorama
		mv colorama ${PATCH}

uninstall:
			rm -rf ${PATCH}${PKG_NAME}
			@echo "done"

update: uninstall
		curl -skL "https://raw.githubusercontent.com/Bayu12345677/library_colorama/main/colorama.sh" > ${PATCH}colorama
