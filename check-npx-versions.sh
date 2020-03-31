#!/bin/bash

echo -e "\n\nInstalling dependencies on Project root: \n"

yarn install

echo -e "\n\nInstalling dependencies on Project foo: \n"

cd src/foo && yarn install

echo -e "\n\nRunning command 'npx browserslist' on Project root: \n"

cd ../../ && npx browserslist

echo -e "\n\nRunning command 'npx browserslist' on foo: \n"

cd src/foo && npx browserslist

