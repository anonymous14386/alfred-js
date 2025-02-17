{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Specify the packages you want in the environment
  buildInputs = [
    pkgs.nodejs
    pkgs.nodePackages.npm
  ];

  # Optionally, you can set environment variables
  shellHook = ''
    echo "Node.js and npm are ready to use!"
    echo "Node.js version: $(node --version)"
    echo "npm version: $(npm --version)"
  '';
}
