# Building LaTeX CV

TARGET_FILENAME = robert-kusznier-cv.pdf
SOURCE_NAME_PREFIX = cv

all: cv.tex
	xelatex ${SOURCE_NAME_PREFIX}.tex
	mv ${SOURCE_NAME_PREFIX}.pdf ${TARGET_FILENAME}
	
clean:
	rm ${SOURCE_NAME_PREFIX}.aux ${SOURCE_NAME_PREFIX}.out ${SOURCE_NAME_PREFIX}.log

