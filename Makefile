# Building LaTeX CV

TARGET_FILENAME = robert-kusznier-cv.pdf
SOURCE_NAME_PREFIX = cv

all:
	# Need to be at the same line, as Makefile doesn't handle cd command normally
	cd src/; xelatex ${SOURCE_NAME_PREFIX}.tex
	mv src/${SOURCE_NAME_PREFIX}.pdf ${TARGET_FILENAME}
	
clean:
	cd src/; rm ${SOURCE_NAME_PREFIX}.aux ${SOURCE_NAME_PREFIX}.out ${SOURCE_NAME_PREFIX}.log

