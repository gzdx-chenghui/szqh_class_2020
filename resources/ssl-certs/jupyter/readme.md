# openssl

```shell
openssl req -x509 -nodes -newkey rsa:2048 -keyout jupyter.key -out jupyter.crt
```

输出：
```console
[zzhang@manjaro-pc-1 jupyter]$ openssl req -x509 -nodes -newkey rsa:2048 -keyout jupyter.key -out jupyter.crt
Generating a RSA private key
..+++++
........................+++++
writing new private key to 'jupyter.key'
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:CN
State or Province Name (full name) [Some-State]:Guangdong
Locality Name (eg, city) []:Shenzhen
Organization Name (eg, company) [Internet Widgits Pty Ltd]:szqh
Organizational Unit Name (eg, section) []:
Common Name (e.g. server FQDN or YOUR name) []:
Email Address []:
[zzhang@manjaro-pc-1 jupyter]$ 
```