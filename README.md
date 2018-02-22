# fsfacts

This module contains some custom filesystem facts.

# Usage

This module contains the following facts:

* *has_bootfs:* returns true if /boot is a separate partition. Otherwise return false.
* *bootfs_size:* size of the /boot partition (if present) in human-readable format
* *bootfs_available:* amount of space available on the /boot partition (if present) in human-readable format.

The data is gathered from $facts['mountpoints']. The facts are primarily 
intended to help data visualization, for example in Puppetboard. The 
*has_bootfs* fact can be used to drive logic in Puppet code also.

With a bit more trickery the above set of facts could be created automaticlaly 
for each mountpoint.

# Dependencies

None

# Operating system support

The facts should work any operating system, but they will only produce useful 
data on *NIX-like operating systems.
