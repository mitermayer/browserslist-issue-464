# browserslist-issue-464

Repository to provide minimal repro to issue 464 on repo browserslist/browserslist

Steps to repro:

- Have `nvm` in order to use same node version, then do a `nvm use` in the root

- Install `yarn` and `npx` globally

- Install deps on Project root via `yarn install`

- Install deps on src/foo via `yarn install`

- run `./check-npx-versions.sh` script or manually perform its steps


outcome: output of `npx browserslist` do not match

current outcome:

```
Running command 'npx browserslist' on Project root: 

npx: installed 11 in 4.556s
and_chr 80
chrome 80
edge 80
firefox 74
ie 11
ios_saf 13.3
safari 13


Running command 'npx browserslist' on foo: 

Browserslist: caniuse-lite is outdated. Please run next command `yarn upgrade`
and_chr 75
chrome 75
edge 18
firefox 67
ie 11
ios_saf 12.2-12.3
safari 12.1

```
