
# pywebsocket3 #

The pywebsocket project aims to provide a [WebSocket](https://tools.ietf.org/html/rfc6455) standalone server.

pywebsocket is intended for **testing** or **experimental** purposes.

Run this to read the general document:
```
$ pydoc mod_pywebsocket
```

Please see [Wiki](https://github.com/GoogleChromeLabs/pywebsocket3/wiki) for more details.

# INSTALL #

To install this package to the system, run this:
```
$ python3 setup.py build
$ sudo python3 setup.py install
```

To install this package as a normal user, run this instead:

```
$ python3 setup.py build
$ python3 setup.py install --user
```
# LAUNCH #

To use pywebsocket as standalone server, run this to read the document:
```
$ pydoc mod_pywebsocket.standalone
```
# Disclaimer #
This is not an officially supported Google product

```
docker run -d --name websocket -p 80:80 registry.cn-hangzhou.aliyuncs.com/magictommy/websocket-echo
wscat -c ws://${IP}/echo
```
#kubernetes#
```
kubectl create deployment websocket --image=registry.cn-hangzhou.aliyuncs.com/magictommy/websocket-echo
kubectl expose deployment websocket --port=80 --target-port=80
kubectl create ingress websocket --rule=websocket.52xiaojuzi.top/=websocket:80
kubectl get ingress
wscat -c ws://${IP}/echo
```
