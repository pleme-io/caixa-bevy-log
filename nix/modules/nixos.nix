# nix/modules/nixos.nix — auto-generated from bevy_log.caixa.lisp
# description: "Provides logging for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_log;
in {
  options.services.bevy_log = {
    enable = lib.mkEnableOption "bevy_log";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_log or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
