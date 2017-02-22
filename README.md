# chef_cookbooks
Cookbooks made to be run on Chef

# Usage
To use these cookbooks you only need to do a few steps
1. Add them to your *cookbooks/* folder on your *chef-repo/*

2. Upload them to your Chef Server (In case you are working with Nodes):
    > knife cookbook upload name_of_cookbook

3. Run them:
    On your node
    > chef-client

    Or
    On your local machine:
    > chef-client --local -o recipe['name_of_cookbook']
