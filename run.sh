#!/bin/bash
set -e

mkdir -p releases/${INPUT_VERSION}
./scripts/changelog-as-json.sh > releases/${INPUT_VERSION}/commits.json
git add releases/${INPUT_VERSION}/commits.json
git tag ${INPUT_VERSION}
git commit -m "release ${INPUT_VERSION}"
git push
git push --tags