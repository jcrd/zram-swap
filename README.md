# zram-swap

zram-swap is a simple script that manages `zram` devices for use as swap.
It creates as many devices as there are available processing units, as reported
by `nproc`, and divides total memory among them, making swap space equal to RAM.
This behavior is not configurable.

## Usage

```
usage: zram-swap command

commands:
  setup   Setup devices
  remove  Remove devices
  on      Turn on devices
  off     Turn off devices
  status  Show status of devices
```

zram-swap also provides a **systemd** service for automatic setup at boot:

`systemctl enable zram-swap`

## License

This project is licensed under the MIT License (see [LICENSE](LICENSE)).

## Alternatives

- [systemd-swap](https://github.com/Nefelim4ag/systemd-swap) supports multiple
swap backends and is configurable
