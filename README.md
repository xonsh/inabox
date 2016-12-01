Xonsh in a Box
==============
Just some files to set up a server (specifically, EC2) with [shellinabox](https://github.com/shellinabox/shellinabox) and xonsh.

To run
------

```sh
curl https://raw.githubusercontent.com/xonsh/inabox/master/bootstrap | sh
```

Docker Local Test
-----------------
To test this in a local container, first build a clean version of the image:

```console
$ docker build -t testxonshlive --no-cache --force-rm .
```

Then, you can start up the server locally with,

```console
$ docker run -p 4242:4242 testxonshlive shellinaboxd -p 4242 -t -s /:xonsh:xonsh:HOME:xonsh --linkify normal
```

You can then test it out by navigating to http://localhost:4242/
