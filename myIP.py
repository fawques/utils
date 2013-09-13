# Este script envía al servidor de raspi-fawques la IP pública del pc que lo ejecute

import urllib
import urllib2

url = 'http://raspi-fawques.vv.si'
my_ip = urllib2.urlopen('http://ip.42.pl/raw').read()
valor = {'data': my_ip}
data = urllib.urlencode(valor)
req = urllib2.Request(url, data)
response = urllib2.urlopen(req)
