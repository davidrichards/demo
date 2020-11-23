# Demo
> TBD


## Install

First:

`git clone git@github.com:davidrichards/demo.git`

I've found that Python 3.8.6 is a good choice for Python right now, with the dependencies I'm using. You may want a virtual environment just for this project:

`pip3 -m venv path_to_virtual_environment`

Then activate it:

`source path_to_virtual_environment/bin/activate`

Then go to the demo directory:

`cd demo`

Pull down the demo data (ensure you have an AWS CLI setup first):

`dvc pull`

Finally install the requirements:

`pip install -r requirements.txt`

## How to use

You can interact with the code in Jupyter:

`jupyter-notebook`

Anything that works completely will be in the notebooks directory. Anything that is incomplete or a bad idea remains in the experiments directory.

If you're making changes, and you'd like to extract code into libraries:

`make`

This:

* runs all the tests
* extracts code from the notebooks, storing them in demo
* rebuilds the documentation
