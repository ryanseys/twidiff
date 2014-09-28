# twidiff

> Diff your twitter followers

## Install

1. Clone repo
2. Install [`t`](https://github.com/sferik/t) and setup with an account.

## Usage

``` sh
$ ./twidiff.sh
```

**First run:** Will create a `results` folder, set up a git repository
in that folder, and commit a list of your followers to this repo. All followers
will be printed out in the diff.

**Subsequent runs:** Only changes to followers will be printed and committed to
the repo.

Example:

``` diff
- someone
+ someoneelse
```

## License

MIT <3
