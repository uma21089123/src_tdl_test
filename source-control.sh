mkdir /var/www/html/tdl-test
cd /var/www/html/tdl-test
echo "<!DOCTYPE html><html><body><h1>Hello World</h1></body></html>" >> /var/www/html/tdl-test/index.html
git init
git add /var/www/html/tdl-test/index.html
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/uma21089123/tdl-test.git
git push -u origin main
