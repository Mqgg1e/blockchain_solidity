To start a new project with Foundry, use forge init:
forge init hello_foundry
This creates a new directory hello_foundry from the default template. This also initializes a new git repository.
The default template comes with one dependency installed: Forge Standard Library. This is the preferred testing library used for Foundry projects. Additionally, the template also comes with an empty starter contract and a simple test.

Let's build the project:
forge build

And run the tests:
forge test

You'll notice that two new directories have popped up: out and cache.

The out directory contains your contract artifact, such as the ABI, while the cache is used by forge to only recompile what is necessary.