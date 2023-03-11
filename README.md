# Rego Learning

This repository contains basic [rego, a JSON superset language](https://www.openpolicyagent.org/docs/latest/policy-language/), examples based on [Open Policy Agent (OPA) documentation](https://www.openpolicyagent.org/).

---

## Setup

Setup the repository by running the setup script
```bash
./bin/setup.sh
```

Execute the tests by running the test script
```bash
./bin/test.sh
```

When committing tests will be run. This package was built with the [VSCode Opa extension](https://marketplace.visualstudio.com/items?itemName=tsandall.opa).

---

## Directory Structure

- **`/bin`**: contains bash scripts for repository setup and testing
- **`/policy`**: is the most simple policy example
- **`/rest`**: is a REST API example
- **`/rest_detailed`**: is a REST API example with tests
