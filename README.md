# Apm Planner install on debian jessie
Instruction how to install apm_planner on debian jessie

The problem with installing apm_planner on Debian Jessie is lack of dependencies, especially QT5 (needed 5.4 version, on repository it's 5.3 only, and it's hard to install it using packages or another repositories).

The solution is based on compiling QT 5.7 from scratch, and then compiling the last version of the apm_planner. 

Please be patient, compilation of QT could take from few hours to even few days (on my intel i3 and 8GB of RAM it took about 9 hours).

**Warning! For compiling QT and apm_planner on Debian Jessie you will need 20-30GB free disk space!**

Instructions
------------

```git clone https://github.com/mikolajzieba/apm_planner_debian_jessie```

```cd apm_planner_debian_jessie/```

```chmod +x install_apm_planner.sh```

```sudo ./install_apm_planner.sh```

