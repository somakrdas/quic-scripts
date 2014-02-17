# Usage

## `build.sh`

```
./quic-scripts/build.sh
./quic-scripts/build.sh --update
```

## `transfer.sh`

```
./quic-scripts/transfer.sh page.html --no-log --debug --no-wget
./quic-scripts/transfer.sh page.html --log --debug --no-wget
./quic-scripts/transfer.sh page.html --log --release --no-wget
```

## `mahimahi_transfer.sh`

```
./quic-scripts/mahimahi_transfer.sh page.html --log --debug --server
./quic-scripts/mahimahi_transfer.sh page.html --log --debug --client
./quic-scripts/mahimahi_transfer.sh page.html --log --debug --wget
```

## `netem.sh`

```
./quic-scripts/netem.sh
./quic-scripts/netem.sh delay 20ms loss 1% rate 10Mbit
```

## `clean.sh`

```
./quic-scripts/clean.sh
```

# See also

* [Chromium - master branch](https://github.com/anirudhSK/chromium)
* [Chromium - mycubic branch](https://github.com/anirudhSK/chromium/tree/mycubic)
