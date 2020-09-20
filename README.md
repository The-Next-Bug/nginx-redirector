# Overview
A very very simple container that relyies on the behavior or the official
[nginx](https://hub.docker.com/_/nginx) image to create a redirect. There are
probably simpler ways to do this, overall, but it seemed like a good idea
at the time.

# Configuration
There are three environment variables that can be used to change the behavior
of the redirector:

* **REDIRECTOR_NAME** - Sets the **server_name** of the instance and defaults to "localhost" 
* **REDIRECTOR_TARGET** - Sets the destination to redirect to. Defaults to "https://example.com" 
* **REDIRECTOR_TYPE** - Sets the type of redirect as per the nginx [rewrite](http://nginx.org/en/docs/http/ngx_http_rewrite_module.html#rewrite) directive

# Example Usage

Creating a redirector that redirects all incoming requests to https://thenextbug.com
```
 docker run --rm --name redirector -p 80:80 \
	-e REDIRECTOR_TARGET=https://thenextbug.com \
	-e REDIRECOTR_NAME=example.com
	redirector
```

