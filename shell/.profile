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
    PATH="$HOME/bin:$PATH"
fi

# LOADING PROMPT
echo "Loading .profile"

# exporting PGP key
export GPGKEY=5C38081A

# Python Start Up File
export PYTHONPATH=$PYTHONPATH:~/workspace/python/myprojects
export PYTHONPATH=$PYTHONPATH:~/software/vplan/git_trunk/python
export PYTHONPATH=$PYTHONPATH:~/software/vplan/vplan-src/python
export PYTHONPATH=$PYTHONPATH:~/software/vplan/examples/quadcopter2d

# pysnopt PATH
export PYTHONPATH=$PYTHONPATH:~/software/snopt7/python

# pyqpoases PATH
#export PYTHONPATH=$PYTHONPATH:~/software/qpOASES/interfaces/python

# nlopt PATH
export PYTHONPATH=$PYTHONPATH:~/software/nlopt-2.3/swig/.libs

# ADOLC Bashvariablen
#export ADOLC_BASE=~/software/adolc_base

# ADOLC_Kinematic Bashvariablen
#export ROBOBASE=~/software/adolc_kinematics
export PATH=$HOME/workspace/work/isios_scriptsuite/bin:$PATH
export PATH=$HOME/software/vplan/examples/quadcopter2d/realtime/bin:$PATH

# Gurobi Bashvariablen
export GUROBI_HOME="/opt/gurobi550/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"

# MUSCOD Bashvariablen
export MUSCOD_SUITE_BASE=$HOME/software/muscod
export MUSCODDIR=$MUSCOD_SUITE_BASE
export SUITE_DIR=$MUSCOD_SUITE_BASE

export PATH=$PATH:$MUSCOD_SUITE_BASE/MC2/Debug/bin
export PATH=$PATH:$MUSCOD_SUITE_BASE/MC2/Release/bin

# Debug MUSCOD PYTHON INTERFACE
export PYTHONPATH=$PYTHONPATH:$MUSCOD_SUITE_BASE/Packages/INTERFACES/Debug/lib64
export PYTHONPATH=$PYTHONPATH:$MUSCOD_SUITE_BASE/Packages/INTERFACES/Debug/PYTHON

# Release MUSCOD PYTHON INTERFACE
#export PYTHONPATH=$PYTHONPATH:$MUSCOD_SUITE_BASE/Packages/INTERFACES/Release/lib64
#export PYTHONPATH=$PYTHONPATH:$MUSCOD_SUITE_BASE/Packages/INTERFACES/Release/PYTHON

# PGPLOT
export PGPLOT_DIR=$MUSCOD_SUITE_BASE/Packages/PGPLOT/Debug
export PGPLOT_FONT=$PGPLOT_DIR/grfont.dat
export PGPLOT_RGB=$PGPLOT_DIR/rgb.txt
export PATH=$PATH:$PGPLOT_DIR
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PGPLOT_DIR

# MESHUP Bashvariablen
export MESHUP_PATH=$HOME/software/meshup/

# RBDL Bashvariablen
#export RBDL_PATH=$HOME/software/rbdl/

# virtualenv bash variables
if [ -f /usr/local/bin/virtualenvwrapper.sh ]
then
    export WORKON_HOME="$HOME/.virtualenvs"
    export PROJECT_HOME="$HOME/projects"
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "not installed: 'virtualenv'"
    echo "not installed: 'virtualenvwrapper'"
fi

# VPLAN Bashvariablen

export VPLANHOME=~/software/vplan
export VPLANROOT=$VPLANHOME/
export VPLANTARGET=linux
export VPLANEXAMPLES=$VPLANHOME/examples
export VPLANMODULES=$VPLANHOME/modules
export PATH=$PATH:$VPLANROOT$VPLANTARGET/bin:$VPLANROOT$VPLANTARGET/scripts

export GFORTRAN_UNBUFFERED_ALL=y

# ADIFOR Bashvariablen
export AD_HOME=$VPLANHOME/lib/ADIFOR2.0D
export AD_LIB=$VPLANHOME/lib/ADIFOR2.0D.lib
export AD_OS=Linux86
export PATH=$PATH:$AD_HOME/bin

# TAPENADE Bashvariablen
export JAVA_HOME=/usr
export TAPENADE_HOME=$VPLANHOME/lib/tapenade3.6
export PATH=$TAPENADE_HOME/bin:$PATH

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# ADD ANDROID DEVELOPMENT KIT PATHS
export PATH=$PATH:$HOME/software/android-sdk-linux/tools
export PATH=$PATH:$HOME/software/android-sdk-linux/platform-tools

# DYNAMOD Environment
#source /home/mkudruss/software/DYNAMOD/bin/env/DYNAMOD_env
