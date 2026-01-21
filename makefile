bionic:
	cp mirrorbuild_bionc.sh mirrorbuild.sh
	docker-compose build
	docker-compose up mirror

# jammy,jammy-security,jammy-updates,jammy-backports
jammy:
	cp mirrorbuild_jammy.sh mirrorbuild.sh
	docker-compose build
	docker-compose up mirror
