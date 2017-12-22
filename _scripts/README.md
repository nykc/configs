# Post OSX installation

## Installing homebrew

Homebrew requires XCode to be installed, so make sure that is installed before continuing. 

In terminal enter paste the following: 
    
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Once the installation is successful, run the following command:

    brew doctor

If you see "Your system is ready to brew", you are ready to begin installing tools.

Be sure to run install xcode-select

    xcode-select --install

Follow the instructions on the prompt.

You can then run the homebrew_tools.sh script to install common tools.

    curl -kL https://raw.githubusercontent.com/nykc/configs/master/_scripts/homebrew_tools.sh | bash

