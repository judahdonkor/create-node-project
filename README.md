Create a Node.js Project
==========
Most package managers lets you quickly create a `package.json` based on your defaults. However, there are some tasks like adding a license and `.gitignore` which make the entire process of starting a Node.js project boring. The following packages are a life-savers for the uninterested developer: 😎
- The [license package](https://www.npmjs.com/package/license) to download a license of choice
- The [gitignore package](https://www.npmjs.com/package/gitignore) to automatically download the relevant `.gitignore` file from [GitHub's repo](https://github.com/github/gitignore)
- The [covgen package](https://www.npmjs.com/package/covgen) to generate the [Contributor Covenant](https://www.contributor-covenant.org/) and give your project a code of conduct that will be welcoming to all contributors

## Init Script

### NPM
```shell
  npx license $(npm get init.license) -o "$(npm get init.author.name)" > LICENSE
  npx gitignore node
  npx covgen "$(npm get init.author.email)"
  npm init -y
```

### Yarn
```shell
  yarn dlx license $(yarn config get init-license) -o "$(yarn config get init-author-name)" > LICENSE
  yarn dlx gitignore node
  yarn dlx covgen "$(yarn config get init-author-email)"
  yarn init -y
```

## Customising Defaults

### NPM
You may either edit the config file in your text editor using
`npm config edit`
or via the command line with
```shell
  npm set init.author.name "Your name"
  npm set init.author.email "your@email.com"
  npm set init.author.url "https://your-url.com"
  npm set init.license "MIT"
  npm set init.version "1.0.0"
```

### Yarn
You may set your default with
```shell
  yarn config set init-author-name "Your name"
  yarn config set init-author-email "your@email.com"
  yarn config set init-author-url "https://your-url.com"
  yarn config set init-license "MIT"
  yarn config set init-version "1.0.0"
```