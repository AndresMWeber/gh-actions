<p align="center">
    <a href="https://github.com/actions" rel="noopener">
        <img width=50px height=50px src="https://avatars1.githubusercontent.com/u/44036562?s=280&v=4" alt="GitHub Actions Logo">
    </a>
    <a href="https://www.autodesk.com/products/maya" rel="noopener">
        <img width=50px height=50px src="https://damassets.autodesk.net/content/dam/autodesk/www/solutions/badge/maya-2017-badge-75x75.png" alt="Maya 2020 Logo">
    </a>
    <a href="https://www.docker.com/" rel="noopener">
        <img height=50px src="https://www.docker.com/sites/default/files/d8/styles/role_icon/public/2019-07/Moby-logo.png?itok=sYH_JEaJ" alt="Docker Moby Logo">
    </a>
  <h2 align="center">Maya Docker Testing</h5>
  <h5 align="center">How to run a python test suite using CI in Maya</h5>
  <div align="center">
      <img alt="Github CI" href="https://github.com/AndresMWeber/gh-actions/actions" src="https://github.com/AndresMWeber/gh-actions/workflows/CI/badge.svg" />
      <img alt="Github Latest Release" href="https://github.com/AndresMWeber/gh-actions/releases" src="https://flat.badgen.net/github/release/andresmweber/gh-actions" />
      <img alt="Github Last Commit" href="https://github.com/AndresMWeber/gh-actions/commits/master" src="https://flat.badgen.net/github/last-commit/andresmweber/gh-actions" />
      <img alt="Github Issues" href="https://github.com/andresmweber/gh-actions/issues" src="https://flat.badgen.net/github/open-issues/andresmweber/gh-actions" />
      <img alt="Github License" href="https://github.com/AndresMWeber/gh-actions/blob/master/LICENSE.md" src="https://flat.badgen.net/github/license/andresmweber/gh-actions" />
      <img alt="PRs Welcome" href="http://makeapullrequest.com"  src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square" />
  </div>
</p>

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

# ⛏️ Built Using

- Docker - Containerization
- Maya - 3D Runtime Environment
- GitHub Actions - CI

# ✍️ Authors

- [a772bNsz](https://github.com/a772bNsz/)
- [andresmweber](https://github.com/andresmweber/)

# 🎉 Acknowledgements

- [marcusottosson](https://github.com/mottosso) as always for his fantastic resources
