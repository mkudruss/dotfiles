.. This is a comment. Note how any initial comments are moved by
   transforms to after the document title, subtitle, and docinfo.

====================
My Dotfile Selection
====================

:Author: Manuel Kudruss
:Address: Im Neuenheimer Feld 368
          69120 Heidelberg
          Germayn
:Contact: manuel.kudruss@iwr.uni-heidelberg.de
:organization: Interdisciplinary Center for Scientific Computing
:copyright: Copyright (c) Manuel Kudruss, Heidelberg

            Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

            The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

            THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

:Dedication:

    This is a collection of my used dotfiles and serves solely my convenience.


Installation
============

Just check out the repository to desired path: ::

  git clone https://github.com/mkudruss/dotfiles.git workspace/dotfiles

Then execute the installation script in the chosen path: ::

  cd workspace/dotfiles
  ./setup.sh

which will look for the dotfiles, create a backup and will then create symlinks
to the ones from the repository.
