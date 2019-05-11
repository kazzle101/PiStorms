# PiStorms

## This fork of PiStorms is to make it compatible with Python 3
A Work in progress - this version won't work in Python 2.7, and the setup script may not work as expected
```
$ git clone https://github.com/kazzle101/PiStorms.git
$ PiStorms/setup/setup3.sh
```
See also:
```
$ PiStorms/setup/copypythonfiles.sh
```
There is also a known problem running this as normal user, rather than root. Permissions on the files /var/lock/ili9341 and /var/lock/msbrowser
need setting for write access by the software. I have commented out the chown line in sys/MS_ILI9341.py (line 52), you should add your user to the pi group and then run the permissions script:
```
$ sudo usermod -a -G pi <username>
$ sudo PiStorms/setup/setlockfiles.sh
```
The permissions on the lock files get reset every time the pi is restarted

I have tested with (working through the demo programs):
* NXT Motor - Degrees, RunSeconds, ShowPos (angle), Motor Sync and PID test
* NXT Touch sensor
* NXT Light sensor
* NXT Colour sensor
* I have also tested those in programs/30-DataVisulization that do not use an external sensor.

NXT Sound and NXT Ultrasonic don't appear to be supported, and I don't have any EV3 parts so cannot test those.

---

The [PiStorms](http://www.mindsensors.com/content/78-pistorms-lego-interface) is a robotics platform. It enables you to create robots using LEGO Mindstorms parts, and control it on a Raspberry Pi with Python. Besides its 4 motor ports, 4 sensor ports, and all the benefits of the Raspberry Pi, the PiStorms lets you do even more. It has a touchscreen for easy visual feedback and touch input. It has a convenient web interface to program and control the device, even accessible on mobile devices.

We have many [blog posts](http://www.mindsensors.com/blog/PiStorms) on our website about the PiStorms. These include tutorials and project ideas. There is also a handy [getting started guide](http://www.mindsensors.com/content/72-getting-started-with-pistorms).

A [prepared SD card image](http://www.mindsensors.com/largefiles/pistorms.zip) is available. It's based on Raspbian and has everything you need to use your PiStorms.

If you would might rather add the PiStorms code and libraries to your existing Raspberry Pi, please follow these steps:
1. Install latest Raspbian image on a microSD card (use an 8 GB or larger microSD card). Insert this microSD card in your Raspberry Pi 3.
2. Assembly the frame around your Raspberry Pi and then attach the PiStorms. For details, see this [blog post](http://www.mindsensors.com/blog/how-to/pistorms-frame-assembly).
3. Start your Raspberry Pi and log in with the username `pi` and the password `raspberry` (Raspbian defaults).
4. Run [`sudo raspi-config`](https://www.raspberrypi.org/documentation/configuration/raspi-config.md) and expand the file system.
5. Configure your Raspberry Pi to connect to Internet via WiFi or Ethernet. For details, see this [blog post](http://www.mindsensors.com/blog/how-to/connecting-raspberry-pi-to-wifi).
6. Run the following commands to download and configure this repository
```
$ git clone https://github.com/mindsensors/PiStorms.git
$ PiStorms/setup/setup.sh
```

The `setup.sh` script will take several minutes to download files and configure your system.
When it configures the VNC server, it might ask for a password. If so please enter a password you will remember, such as `raspberry`. You will need this later to login to your Raspberry Pi from a VNC client.

Now you can browse the examples in the PiStorms/programs folder.

To write your own Python programs, start with this [tutorial](http://www.mindsensors.com/blog/how-to/pistorms-python-programming-tutorial), then refer to the [API reference](http://www.mindsensors.com/reference/PiStorms/html/).
