import requests
from html.parser import HTMLParser

class Parser(HTMLParser):
    url = 'https://www.irelandwestairport.com/flight_information'
    r = requests.get(url, allow_redirects=True)
    open('/var/www/html/tdl-test/index.html', 'wb').write(r.content)

    def handle_starttag(self, tag, attrs):
        if tag == 'img':
            for attr in attrs:
                if 'src' in attr:
                    if 'http' not in attr[1]:
                        img_list.append(attr[1])


img_list = []
f = open("/var/www/html/tdl-test/index.html", 'r') # open file with read permissions
filedata = f.read() # read contents
f.close()
parser = Parser()
parser.feed(filedata)
for img in img_list:
    findstr = f'src="{img}"'
    replacestr = f'src="https://www.irelandwestairport.com{img}"'
    filedata = filedata.replace(findstr, replacestr)


f = open("/var/www/html/tdl-test/index.html",'w') # open the same (or another) file with write permissions
f.write(filedata) # update it replacing the previous strings
f.close()

