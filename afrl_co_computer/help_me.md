# What is this repo
This repo allows the co-computer to boot up the afrl_ros launch file automatically without the need of manually entering the terminal commands. 

# Set up for Co-Computer

1. Download the afrl_co_computer repo:
```

``` 

2. Download the afrl_docker container repo:
```
git clone https://github.com/jn89b/afrl_container.git
```
1. Put the **afrl_start.sh**  script in your home directory, so pathway should be:
```
your_home/afrl_start.sh
```

4. Put the **start_afrl.service** into /etc/systemd/system, so pathway of this should be:
```
/etc/systemd/system/start_afrl.service
```

5. After that enter the following commands:
```
sudo systemctl daemon-reload 

sudo systemctl start start_afrl.service

sudo systemctl enable start_afrl.service
```

To check if the service is running do the following:

```
sudo systemctl status start_afrl.service
```

If the service is running you should see something like this:
```
fastlab@raspberrypi:~ $ sudo systemctl status start_afrl.service 
● start_afrl.service - AFRL ROS startup
     Loaded: loaded (/etc/systemd/system/start_afrl.service; enabled; vendor preset: enabled)
     Active: active (running) since Mon 2022-08-01 17:57:54 CDT; 34min ago
   Main PID: 438 (bash)
      Tasks: 13 (limit: 3720)
        CPU: 1.086s
     CGroup: /system.slice/start_afrl.service
             ├─438 /bin/bash /home/fastlab/afrl_start.sh
             ├─442 make test
             ├─443 /bin/sh -c docker run -i --net=host \
        --device=/dev/ttyUSB0 \
        --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="NVIDIA_DRIVER_CAPABILITIES=all" --env="DISPLAY" --env="QT_X11_NO_MITSHM=1>
lines 1-12...skipping...
● start_afrl.service - AFRL ROS startup
     Loaded: loaded (/etc/systemd/system/start_afrl.service; enabled; vendor preset: enabled)
     Active: active (running) since Mon 2022-08-01 17:57:54 CDT; 34min ago
   Main PID: 438 (bash)
      Tasks: 13 (limit: 3720)
        CPU: 1.086s
     CGroup: /system.slice/start_afrl.service
             ├─438 /bin/bash /home/fastlab/afrl_start.sh
             ├─442 make test
             ├─443 /bin/sh -c docker run -i --net=host \
        --device=/dev/ttyUSB0 \
        --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="NVIDIA_DRIVER_CAPABILITIES=all" --env="DISPLAY" --env="QT_X11_NO_MITSHM=1>
        roslaunch mavros px4.launch
             └─444 docker run -i --net=host --device=/dev/ttyUSB0 --volume=/tmp/.X11-unix:/tmp/.X11-unix:rw --env=NVIDIA_DRIVER_CAPA>

Aug 01 18:30:19 raspberrypi bash[444]: [ WARN] [1659396619.521864335]: CMD: Unexpected command 410, result 2
Aug 01 18:30:29 raspberrypi bash[444]: [ WARN] [1659396629.560152593]: CMD: Unexpected command 410, result 2
Aug 01 18:30:39 raspberrypi bash[444]: [ WARN] [1659396639.596547306]: CMD: Unexpected command 410, result 2
Aug 01 18:30:49 raspberrypi bash[444]: [ WARN] [1659396649.608992517]: CMD: Unexpected command 410, result 2
Aug 01 18:30:59 raspberrypi bash[444]: [ WARN] [1659396659.648212089]: CMD: Unexpected command 410, result 2
Aug 01 18:31:09 raspberrypi bash[444]: [ WARN] [1659396669.667380698]: CMD: Unexpected command 410, result 2
Aug 01 18:31:19 raspberrypi bash[444]: [ WARN] [1659396679.735750360]: CMD: Unexpected command 410, result 2
Aug 01 18:31:29 raspberrypi bash[444]: [ WARN] [1659396689.760135581]: CMD: Unexpected command 410, result 2
Aug 01 18:31:41 raspberrypi bash[444]: [ WARN] [1659396701.757066140]: CMD: Unexpected command 410, result 2
Aug 01 18:31:53 raspberrypi bash[444]: [ WARN] [1659396713.800004590]: CMD: Unexpected command 410, result 2
```
