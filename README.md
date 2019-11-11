# Terraform experiments

This is an experiment in how Terraform providers propagate their configuration across modules.

## Description

We define AWS provider with its region in top module and see how providers work in child modules.
In each of child modules terraform provider is defined differently.

* module1: provider with no configuration (spoiler: doesn't work)
* module2: no provider defined
* module3: provider with non-matching region
* module4: provider with region defined to match parent's

## Outcomes

* When provider is not defined in child module:
    - Provider will be inherited from parent
    - If there is no parent you'll be asked to specify region

* When provider is defined in child module:
    - You have to specify region for it or plan will crash
    - You can specify a region different to parent provider
