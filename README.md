# Wine-Java

Utilities for running a Windows JVM under Wine.

## Why Wine-Java?

Even though Java is cross-platform, there are cases where you'd like to test that it works with (for example) the OS-specific paths. To do this requires running the test on the target OS.

For Continuous Integration applications, it is sometimes convenient to run all tests under Linux though. Travis is an example (it does not yet support Windows VMs for CI testing).

The idea of Wine-Java is to run the Windows JVM on Linux under Wine (see https://www.winehq.org/), to get some coverage of Windows behaviour on a Linux CI VM.

## How to use

All of the scripts live in the scripts subdirectory.

1. First ensure that you have Wine installed. I have found that wine1.4 (which is the standard version for Ubuntu 12) doesn't work nicely with JDK 7, though I have had success with the latest version of wine (1.7). You should be able to install this using `yum` or `apt` depending on your platform.
2. Run `setup-wine.sh` to download and install the JDK under Wine. Note that you will be accepting the Oracle license agreement in the process. The scripts at the moment are hard-coded to download the 64 bit version of JDK 7 update 79.
3. You should now be able to run `winejava` as a drop-in replacement for `java`.
4. You should also be able to run `winemvn`, which is a wrapper around `mvn` that configures it to use `winejava` as the Java command. `winemvn` expects to find `winejava` at `./scripts/winejava`, as it is intended to be run from your project's root - you can easily fix this by setting JAVACMD to the path to `winejava` and invoking `mvn` directly.
