# Nixvim config

## Example flake import

'''nix
{
description = "NixOS configuration";

inputs = {
nixpkgs = {
url = "github:nixos/nixpkgs/nixos-24.05";
};
nixvim = {
url = "github:rsashcroft/nixvim";
}; # ... Other inputs  
}
'''

## Homemanager install

'''nix
{ pkgs, inputs, ... }:
{
home.packages = with pkgs; [
inputs.nixvim.packages.${system}.default
];
}
'''

