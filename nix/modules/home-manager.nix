# nix/modules/home-manager.nix — auto-generated from bevy_log.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_log; in {
  options.programs.bevy_log = {
    enable = lib.mkEnableOption "bevy_log";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_log or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
