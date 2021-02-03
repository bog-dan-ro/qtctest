all: qtctest

qtctest: Makefile qtctest.cpp
	$(CXX) -o $@ -Og -g qtctest.cpp

clean:
	rm -f qtctest

install:
	echo "Installing is not supported"

run: all
	./qtctest

debug: all
	gdbserver :1234 ./qtctest
