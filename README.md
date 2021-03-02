
meta-nvmpi
==========
This is the Bitbake layer to add nvmpi in yocto-based distros.
This layer provides the acceleration function for ffmpeg + Tegra environment. The recipe patches ffmpeg and install some modules to activate the hardware acceleration on dec/enc H.264, H.265, VP9.


Dependencies
------------

  URI: git://github.com/jocover/jetson-ffmpeg.git;protocol=https
  branch: master

  URI: https://github.com/OE4T/meta-tegra.git
  branch: dunfell


Adding the meta-nvmpi layer to your build
-----------------------------------------

Run 'bitbake-layers add-layer meta-nvmpi'

Contributing
------------

Please use github for pull requests: https://github.com/kazuki0824/meta-nvmpi/pulls