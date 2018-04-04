# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$HOME/.local/bin:$PATH"
fi

# LOADING PROMPT
echo "Loading .profile"

# tell D-Bus to use the keyring on the machine's graphical login
if [[ -z $DBUS_SESSION_BUS_ADDRESS ]]; then
    if [[ -f ~/.dbus/session-bus/$(dbus-uuidgen --get)-0 ]]; then
        source ~/.dbus/session-bus/$(dbus-uuidgen --get)-0
        export DBUS_SESSION_BUS_ADDRESS
    fi
fi

# Python Start Up File
export PYTHONPATH=$PYTHONPATH:~/workspace/python/myprojects

# pysnopt PATH
export PYTHONPATH=$PYTHONPATH:~/software/snopt7/python

# pyqpoases PATH
export PYTHONPATH=$PYTHONPATH:~/software/qpOASES/interfaces/python

# RBDL python model wrapper PATH
export PYTHONPATH=$PYTHONPATH:~/software/rbdl_model_python_wrapper/build/python

# nlopt PATH
export PYTHONPATH=$PYTHONPATH:~/software/nlopt-2.3/swig/.libs

# walkerator PATH
#export PYTHONPATH=$PYTHONPATH:~/software/walkerator
export PYTHONPATH=$PYTHONPATH:~/software/walkerator_dev

# irispy PATH
export PYTHONPATH=$PYTHONPATH:~/software/iris-distro/build/install/lib/python3.5/dist-packages/irispy

# msobox PATH
export PYTHONPATH=$PYTHONPATH:~/Documents/theses/2016_rmichel_dynamic_filter/code

# msobox PATH
export PYTHONPATH=$PYTHONPATH:~/software/msobox

# lpnewton PATH
export PYTHONPATH=$PYTHONPATH:~/software/lpnewton

# Gurobi Bashvariablen
# export GUROBI_HOME="/home/mkudruss/software/gurobi651/linux64"
export GUROBI_HOME='/home/mkudruss/software/gurobi/linux64'
export PATH="${PATH}:${GUROBI_HOME}/bin"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"
export GRB_LICENSE_FILE="${GUROBI_HOME}/.gurobi/gurobi.lic"

# MUSCOD Bashvariablen
export MUSCOD_SUITE_BASE=$HOME/software/muscod
export MUSCODDIR=$MUSCOD_SUITE_BASE
export SUITE_DIR=$MUSCOD_SUITE_BASE

export QORE_DIR=$HOME/software/muscod/Packages/QORE/Debug

export PATH=$PATH:$MUSCOD_SUITE_BASE/MC2/Release/bin
export PATH=$PATH:$MUSCOD_SUITE_BASE/MC2/Debug/bin

# Release MUSCOD PYTHON INTERFACE
export PYTHONPATH=$PYTHONPATH:$MUSCOD_SUITE_BASE/Packages/INTERFACES/Release/lib64
export PYTHONPATH=$PYTHONPATH:$MUSCOD_SUITE_BASE/Packages/INTERFACES/Release/PYTHON

# Debug MUSCOD PYTHON INTERFACE
# export PYTHONPATH=$PYTHONPATH:$MUSCOD_SUITE_BASE/Packages/INTERFACES/Debug/lib64
# export PYTHONPATH=$PYTHONPATH:$MUSCOD_SUITE_BASE/Packages/INTERFACES/Debug/PYTHON

# PGPLOT
export PGPLOT_DIR=$MUSCOD_SUITE_BASE/Packages/PGPLOT/Release
export PGPLOT_FONT=$PGPLOT_DIR/grfont.dat
export PGPLOT_RGB=$PGPLOT_DIR/rgb.txt
export PATH=$PATH:$PGPLOT_DIR
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PGPLOT_DIR

# MESHUP Bashvariablen
export MESHUP_PATH=$HOME/software/meshup/

# YARP path
# export YARP_DIR=$HOME/software/yarp/build
# export PATH=$PATH:$YARP_DIR/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$YARP_DIR/lib
# export YARP_DATA_DIRS=$YARP_DIR/share/yarp

# export ICUB_ROOT=$HOME/software/icub-main/
# export ICUB_DIR=$ICUB_ROOT/build
# export YARP_DATA_DIRS=$YARP_DATA_DIRS:$ICUB_DIR/share/iCub/
# export PATH=$PATH:$ICUB_DIR/bin

# export CODYCO_SUPERBUILD_ROOT=$HOME/software/codyco-superbuild
# export CODYCO_SUPERBUILD_DIR=$CODYCO_SUPERBUILD_ROOT/build
# export PATH=$PATH:$CODYCO_SUPERBUILD_DIR/install/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CODYCO_SUPERBUILD_DIR/install/lib
# export YARP_DATA_DIRS=$YARP_DATA_DIRS:$CODYCO_SUPERBUILD_DIR/install/share/codyco

# IPOPT Bashvariablen
export IPOPT_PATH=$HOME/software/Ipopt-3.12.6

# RBDL Bashvariablen
#export RBDL_PATH=$HOME/software/rbdl/

# TAPENADE Bashvariablen
export JAVA_HOME=/usr
export TAPENADE_HOME=~/software/tapenade3.6
export PATH=$TAPENADE_HOME/bin:$PATH

# ADD ANDROID DEVELOPMENT KIT PATHS
export PATH=$PATH:$HOME/Android/Sdk/tools
export PATH=$PATH:$HOME/Android/Sdk/platform-tools
export PATH=$PATH:$HOME/Android/Sdk/ndk-bundle

# LEO compiler
export PATH=$PATH:/home/mkudruss/software/leo_robot/tools/crosstool/gcc-4.1.0-glibc-2.3.6/i686-unknown-linux-gnu/bin/

# implementing ccache
export PATH="/usr/lib/ccache:$PATH"
