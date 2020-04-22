# GitHub ESLint runner

This action executes ESLint linter on specified javascript files without any previous action/build step or Docker required.

## Prerequisites

### ESLint
You must have the ESLint running locally for the action to execute. It will use the same rules as you do locally.
More info [on the ESLint getting started guide](https://eslint.org/docs/user-guide/getting-started#installation-and-usage)

## Usage

### main.yml

Add to your existing `main.yml` file or create a new file named `.github/workflows/lint.yml` and copy over one of the examples below to your new workflow file

This is the simplest example to get it running:
```yml
name: Lint

on: [push]

jobs:
  eslint:
    runs-on: ubuntu-latest
    steps:
      - name: Check out Git repository
        uses: actions/checkout@v2

      - name: Set up Node.js
        uses: actions/setup-node@v1
        with:
          node-version: 12

      # ESLint and Prettier must be in `package.json`
      - name: Install Node.js dependencies
        run: npm install

      - name: Linting
        uses: KOJI-SAS/eslint-action@master
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
