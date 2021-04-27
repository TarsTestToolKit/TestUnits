
cd /root/ ; mkdir -p src/cpp/build; cd src/cpp/build; rm -rf CMakeCache.txt; cmake ..; make; make CppTars-tar;
cd /root ; cd src/golang; make ; rm -rf *.tgz; make tar
cd /root ; cd src/java ; mvn package
cd /root ; cd src/nodejs; tars-deploy NodejsTest
cd /root ; cd src/php; 
