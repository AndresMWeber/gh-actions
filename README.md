# How to run a python test suite using CI in Maya 
![CI](https://github.com/AndresMWeber/gh-actions/workflows/CI/badge.svg)

# ⚙️ Configuration
1.  In order to run different versions of maya, you need to check if that version is available in Marcus Ottosson's Maya docker image: https://hub.docker.com/r/mottosso/maya
2.  Copy/paste another Dockerfile-<mayaversion>, fix the FROM maya version to your desired image version. 
3.  Modify main.yml and add another job (change all instances of <version>):
```
  maya_<version>_tests:
    runs-on: ubuntu-latest
    name: Runs Maya <version>
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Build Container
        run: /usr/bin/docker build -t test:<version> -f "Dockerfile-<version>" .
      - name: Run Container
        run: /usr/bin/docker run --name Maya<version> test:<version>
```