# Dillinger

## *The Last Markdown Editor, Ever*


Dillinger is a cloud-enabled, mobile-ready, offline-storage compatible, AngularJS-powered HTML5 Markdown editor   
   * Type some Markdown on the left
   * See HTML in the right
   * ✨Magic✨   

## Features

   * Import a HTML file and watch it magically convert to Markdown
   * Drag and drop images (requires your Dropbox account be linked)
   * Import and save files from Github, Dropbox, Google Drive and One Drive
   * Drag and drop markdown and HTML files into Dillinger
   * Export documents as Markdown, HTML and PDF   

Markdown is a lightweight markup language based on the formatting conventions
that people naturally use in email.
As [John Gruber](www.naver.com) writes on the [Markdown site](www.phsoft.com)

```python
For i in range(10):
  Print(hello)
```

>The overriding design goal for Markdown's formatting syntax is to make it as readable
>as possible. The idea is that a Markdown-formatted document should be publishable as-is, as plain text, without looking like it's been marked up with tags
or formatting instructions

This text you see here is *actually- written in Markdown! To get a feel
for Markdown's syntax, type some text into the left window and
watch the results in the right

## tech

Dillinger uses a number of open source projects to work properly:

   * [AngularJS](www.phsoft.com) - HTML enhanced for web apps!
   * [Ace Editor](www.phsoft.com) - awesome web-based text editor
   * [markdown-it](www.phsoft.com) - Markdown parser done right. Fast and easy to extend.
   * [Twitter Bootstrap](wwww.phsoft.com) - great Ul boilerplate for modern web apps
   * [node.js](www.phsoft.com) - evented 1/0 for the backend
   * [Express](www.phsoft.com) - fast node.js network app framework @tiholowaychuk
   * [Gulp](www.phsoft.com) - the streaming build system

## installation

Dillinger requires [Node is](www.phsoft.com) v10+ to run.

Install the dependencies and devDependencies and start the server.

```
cd dillinger
npm i
node app
```

For production environments..

```
npm install --production
NODE_ENV=production node app
```

## Plugins
Dillinger is currently extended with the following plugins.

Instructions on how to use them in your own application are linked below.

|plugins|README|
|---|---|
|DropBox|[plugins/dropbox/README.md](url)|
|GitHub|[plugins/github/README.md](url)|
|Google Drive|[plugins/googledrive/README.md](url)|
|OneDrive|[plugins/onedrive/README.md](url)|
|Medium|[plugins/medium/README.me](url)|

## developament
Want to contribute? Great!


Dillinger uses Gulp + Webpack for fast developing.

Make a change in your file and instantaneously see your updates!


Open your favorite Terminal and run these commands.

First Tab:
```
node app
```

Second Tab:
```
gulp watch
```

(optional) Third:
```
karma test
```

### Building for source

For production release:
```
gulp build --prod
```

## Docker
Dillinger is very easy to install and deploy in a Docker container.

By default, the Docker will expose port 8080, so change this within the
Dockerfile if necessary. When ready, simply use the Dockerfile to
build the image.

```
cd dillinger
docker build -t ‹youruser>/dillinger:${package.json.versi
on} .
```

This will create the dillinger image and pull in the necessary dependencies. Be sure to swap out ${ package. json.version} with the actual
version of Dillinger. 

Once done, run the Docker image and map the port to whatever you wish on
your host. In this example, we simply map port 8000 of the host to
port 8080 of the Docker (or whatever port was exposed in the Dockerfile):

```
docker run -d -p 8000:8080 --restart=always --cap-add=SYS
_ADMIN --name=dillinger ‹youruser>/dillinger:${package.js
on. version}
```

>Note: --capt-add=SYS-ADMIN is required for PDF rendering.