# QTUM Development for the Commonfolk

QTUM is a new Blockchain platform that combines the stability of Bitcoin Core, with the creative freedom
provided by the Ethereum Virtual Machine and Smart Contracts. With that said, as a relatively new programmer,
only about two months worth of knowledge about Blockchain technology, I struggled getting started. This guide is by
no means an official guide, or in any way affiliated with the QTUM team. It is merely a braindump of what I did to get
started. Please note that we are using the testnet, and the QTUM main net hasn't been released yet. 

## Getting Started

These instructions should get you up and running with QTUM, and with an basic decentralized app.
*THESE INSTRUCTIONS WERE VETTED ON A MAC.*
Perhaps someday I will make a version for Ubuntu. I am following the guide posted <a href="https://github.com/qtumproject/qtum">here</a>

### Installing

I've written a bash script to take care of installation for you (assuming you're using OSX).
I've ran this successfully on OSX 10.12.6. If you run into any issues, please fill out an issues tag. 

Clone this repo, and then move the install script to wherever you'd like the qtum folder to be stored. 
```
git clone https://github.com/ekivolowitz/QTUM-support.git
chmod u+x installQtum.sh
./installQtum.sh
```

If everything works correctly, you should see something like this at the end. 
```
============================================================================
# TOTAL: 1
# PASS:  1
# SKIP:  0
# XFAIL: 0
# FAIL:  0
# XPASS: 0
# ERROR: 0
============================================================================
```

There may be some output after passing the test, but do not worry about it. 
```
make[1]: Nothing to be done for `check'.
make[1]: Nothing to be done for `check-am'.
```

## Authors
* **Evan Kivolowitz

## License
* MIT LICENSE
* If you like what you see and want to donate, I'll be posting my address soon. Also, if you meet me some day, then you can buy me a beer if this guide helped you. This content will be free 

## Acknowledgments

* Special thanks to <a href="https://gist.github.com/PurpleBooth/109311bb0361f32d87a2">PurpleBooth</a> for the README.md template.

