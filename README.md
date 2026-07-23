# android-cli vfox plugin

A [vfox](https://vfox.dev)/[mise](https://mise.jdx.dev) plugin for
Google's [Android CLI](https://developer.android.com/tools/agents/android-cli)
(GA v1.0, May 2026).

## Why not the android-sdk plugin

The `android-sdk` plugin merely installs the `cmdline-tools` package. After
that, `sdkmanager` has to be used to install other packages. However
`sdkmanager` (v22.0+) now prints this deprecation warning on every invocation:

```text
WARNING: The SDK Manager CLI tool (sdkmanager) is deprecated. Use Android CLI instead.
```

Android CLI is the replacement for `sdkmanager`'s package management.
SDK packages can be installed with `android sdk install`.

> [!NOTE] The `cmdline-tools` packages in particular cannot be installed with this
> CLI tool.

This plugin also resolved the unpleasant issue of `android-sdk` creating a new
ANDROID_HOME for each version of `cmdline-tools`, where all other packages had
to be reinstalled separately.

## Usage

Add the plugin (only needs to be done once per machine):

```bash
mise plugins add android-cli vfox:xaethos/vfox-android-cli
```

For local development, link the checked-out repository:

```bash
mise plugins link android-cli path/to/vfox-android-cli
```

Then install and use it as any other tool:

```bash
mise use android-cli@latest
```

## Known issues

- **Latest release only**
  I have not yet found a site listing version-pinned downloads, so this plugin
  only offers `latest`. The tool has its own self-update command. I'll fix this
  if I can find version URLs or a download manifest.
- **No checksum verification**
  As with the previous point (and probably _because_ of it), I have not found a
  checksum for the CLI executable, so the download is not integrity-verified
  beyond HTTPS transport security.
- **Linux + macOS only**
  The plugin does not yet support Windows. Furthermore, only the architectures
  released by the Android team are available.
