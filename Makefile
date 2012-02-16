FOUNDRY_DIR = ../..
PRODUCTION_DIR = ${FOUNDRY_DIR}/scripts
DEVELOPMENT_DIR = ${FOUNDRY_DIR}/scripts_
MODULARIZE = ${FOUNDRY_DIR}/build/modularize
UGLIFY = uglifyjs --unsafe -nc

all: body min

body:
	${MODULARIZE} -n "throttle-debounce" jquery.ba-throttle-debounce.js > ${DEVELOPMENT_DIR}/throttle-debounce.js

min:
	${UGLIFY} ${DEVELOPMENT_DIR}/throttle-debounce.js > ${PRODUCTION_DIR}/throttle-debounce.js
