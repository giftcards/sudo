## Synopsis

Puppet module to setup admin and operator sudo options.

## Example

Defaults are stored in params.pp.
Typically all you would need to add is a list of admins, an OPERATORS alias, and a list of operators.

## Motivation

Required to setup sudo access for administrators on most machines and developers on dev boxes.

## Installation

Tested on CentOS 6.
Does not require any extra repositories.

## API Reference

sudopurge => purge existing sudo entries in /etc/sudoers.d
admins_aliases => sudo alias to assign to administrators
admins => list of user accounts to give admin sudo access
operators_sudoers_name => /etc/sudoers.d/operators_sudoers_name for operators entries
operators_aliases => sudo alias to assign to operators
operators => list of user accounts to give operator limited sudo access
operators_entry => entry line to assign to sudo operators, be default it assigns them operators_aliases

sudo::sudoers => type definition to create a sudoers file under /etc/sudoers.d/
  ensure => present
  aliases => sudo alias line
  operators => operator to assign entry to
  entry => sudo entry to assign to an operator

## Contributors

Ryan Munz for Giftcards.com - May 2015
