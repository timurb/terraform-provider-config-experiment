# Terraform experiments

This is an experiment in how Terraform providers propagate their configuration across modules.

We define AWS provider with its region in top module and see how providers work in child modules.
In each of child modules terraform provider is defined differently.

* module1: provider with no configuration
* module2: no provider defined
* module3: provider with non-matching region
* module4: provider with region defined to match parent's

