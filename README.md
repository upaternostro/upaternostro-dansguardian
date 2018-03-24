# dansguardian

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with dansguardian](#setup)
    * [What dansguardian affects](#what-dansguardian-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with dansguardian](#beginning-with-dansguardian)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

A puppet module to install, configure and manage DansGuardian, the web content filter.

Tested on Debian 7 (wheezy) and puppet 3.8.

## Module Description

This module installs DansGuardian, let you modify various aspects of its configuration
and manages the service.

## Setup

### What dansguardian affects

* install dansguardian package and its dependencies
* manages /etc/dansguardian files

### Setup Requirements **OPTIONAL**

DansGuardian requires a proxy (squid or other similar) to be installed somewhere,
by default on the same server where DG is installed.

### Beginning with dansguardian

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you may wish to include an additional section here: Upgrading
(For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

At this moment works just on Debian systems. Please modify params.pp if you need
other system support.

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You may also add any additional sections you feel are
necessary or important to include here. Please use the `## ` header.
