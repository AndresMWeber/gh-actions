# How to run a python test suite using CI in Maya 
![CI](https://github.com/AndresMWeber/gh-actions/workflows/CI/badge.svg)

# ⚙️ Configuration
1.  In order to run different versions of maya, you need to check if that version is available in Marcus Ottosson's Maya docker image: https://hub.docker.com/r/mottosso/maya
2.  You can configure the tag in the Dockerfile in this repo
3.  Modify your test suite run script by modifying the entrypoint.sh file
4.  Profit!