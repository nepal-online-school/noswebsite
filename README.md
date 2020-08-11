# About **Nepal Online School**
This repository powers the website of the Nepal Online School(NOS).

Nepal Online School(NOS) is a **non-profit** digital learning platform working for free education in Nepal.
With dedicated and hardworking mentors, we have created quality videos from academics to yoga.


## The following instruction is to guide you to setup **Nepal Online School** and to get start for contributing and testing the project

> **Note:** If you encounter any issue, please consider [opening a issue](https://github.com/nepal-online-school/noswebsite/issues)

# Configuring Ruby
* ### [Linux and Mac](#1-Configuring-Ruby-in-Linux-and-Mac-Os)
* ### [Windows](#2-Configuring-Ruby-in-Windows)

## 1. Configuring Ruby in Linux and Mac Os
> **NOTE:** This method is preferred as we have experienced many issues while using System's Ruby that comes by default.
1. Visit [RVM Website](https://rvm.io/)
2. Install GPG keys
3. Install Ruby

        ```\curl -sSL https://get.rvm.io | bash -s stable```

4. **Important** Run the `source` command which you get at the end of above install command. It will look similar as highlighted in the screenshot.

![Runnning Source Command](https://projectnos.netlify.app/assets/img/ruby-install-source.jpg)

5. Verify your installation by checking the version

        ```ruby -v```
6. And make sure it is the same tuby version which is installed from RVM

        ```which ruby```
7. You can skip [installation on windows]() and proceed to [installing Jekyll Framework]()

    
## 2.  Configuring Ruby in Windows
1. Visit [RubyInstaller]() download page and click on

* *Ruby+Devkit 2.7.1-1 (x64)* for x64 system and
* *Ruby+Devkit 2.7.1-1 (x86)* for x32 system

2. Launch the Executable and proceed as guided by installer
3. Open Command Prompt and verify installation by
    
        ```ruby -v```
4. Now you can proceed to [Installing Jekyll Framework]()


# Installling Jekyll Framework
1. Run `gem install bundler jekyll` in command prompt or terminal and wait for installation to finish
2. Verify the installation by `jekyll -v`

# Clone the Repository
1. Get the source right into your machine but first make sure git is installed by executing `git --version`
2. Then, clone the repo by executing
        ```git clone https://github.com/nepal-online-school/noswebsite```

# Run and Test the project locally
Now you are ready with all the  prerequisites required for running the project.

1. Run the following command to install required gems (or packages) from the *noswebsite* directory

    ```bundle install```
2. Start the jekyll server by hitting
    ```bundle exec jekyll serve```
3. Open your browser and get to http://127.0.0.1:400 or https://localhost:4000

# Wrapping everything
Heres a video to wrap the process mentioned above. [Goto Video](https://youtu.be/3ebBlzQMdII)

# Contributing and Testing
We are really happy (and you are too.) to know that you are going to contribute to the project like this. Heres a quick things you can do for us:
* Contributing front end layout and design
* Gifting a video describing a lesson or topic for students
* Contributing the backend code
* Writing the Documentation
* Opening an issue or suggesting a enhancement
* Last but not least, Spreading the project