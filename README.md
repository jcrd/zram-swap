# zram-swap

zram-swap is a simple script that manages `zram` devices for use as swap.
It can create a single device the size of available RAM, or divide the size
between as many devices as there are CPUs, as reported by `nproc`.

## Usage

```
usage: zram-swap command

commands:
  setup         Setup single device
  setup-per-cpu Setup a device per CPU
  remove        Remove devices
  on            Turn on devices
  off           Turn off devices
  status        Show status of devices
```

### systemd

zram-swap also provides two **systemd** services for automatic setup at boot.

For a single zram swap device: `systemctl enable zram-swap`

For a zram swap device per CPU: `systemctl enable zram-swap-per-cpu`

## License

This project is licensed under the MIT License (see [LICENSE](LICENSE)).

## Alternatives

- [systemd-swap](https://github.com/Nefelim4ag/systemd-swap) supports multiple
swap backends and is configurable
