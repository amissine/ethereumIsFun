# peth(1) - Create / Run / reMove a private Ethereum cluster  

## SYNOPSIS  

Creates / Runs / reMoves a private Ethereum cluster.  

    peth -C|-R|-M  

    -C      create new cluster (the node names are presently hardcoded)  
    -R      run the cluster (actual behavior depends on the script version)  
    -M      remove the cluster directory (its name is presently hardcoded)  

Standard options: `--help`, `--man`, `--version`, `--home`  

## DESCRIPTION  

This version of `peth` automates the procedure outlined in Surya's article
**"Provisioning a Local Private Ethereum Network with Puppeth"**. This is an 
excellent article. Its URL is "https://modalduality.org/posts/puppeth/".

The script takes care of re-unlocking accounts, so that it can run for hours
without human intervention. The nodes in the cluster all listen on 127.0.0.1,
so that there is no need for the Internet connection. Presently, the cluster
is configured to have three nodes (node0, node1, and node2).

## STANDARD OPTIONS

All standard options provide information only.

 * `-h, --help`  
    Prints the contents of the synopsis chapter to stdout for quick reference.

 * `--man`  
    Displays this manual page, which is a helpful alternative to using `man`, 
    if the manual page isn't installed.

 * `--version`  
    Prints version information.
    
 * `--home`  
    Opens this utility's home page in the system's default web browser.

## USAGE

For usage example, watch this URL: https://youtu.be/TdiVjD7AWlo

## LICENSE

For license information and more, visit this utility's home page by running
`peth --home`.

## ACKNOWLEDGEMENTS

Aside of the article mentioned above, this script gratefully depends on the
`ttab` script (https://github.com/mklement0/ttab). The latter is not only
a runtime dependency, but has also been used as a template for this script.
