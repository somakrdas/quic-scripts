# Usage

## `build.sh`

```bash
./quic-scripts/build.sh
./quic-scripts/build.sh --update
```

## `transfer.sh`

```bash
./quic-scripts/transfer.sh page.html --no-log --debug --no-wget
./quic-scripts/transfer.sh page.html --log --debug --no-wget
./quic-scripts/transfer.sh page.html --log --release --no-wget
```

## `mahimahi_transfer.sh`

```bash
./quic-scripts/mahimahi_transfer.sh page.html --log --debug --server
./quic-scripts/mahimahi_transfer.sh page.html --log --debug --client
./quic-scripts/mahimahi_transfer.sh page.html --log --debug --wget
```

## `netem.sh`

```bash
./quic-scripts/netem.sh
./quic-scripts/netem.sh delay 20ms loss 1% rate 10Mbit
```

## `clean.sh`

```bash
./quic-scripts/clean.sh
```

# See also

* [Chromium - master branch](https://github.com/anirudhSK/chromium)
* [Chromium - mycubic branch](https://github.com/anirudhSK/chromium/tree/mycubic)
