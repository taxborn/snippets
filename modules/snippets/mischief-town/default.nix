{ lib, ... }:
{
  options.mySnippets.mischief-town.networkMap = lib.mkOption {
    type = lib.types.attrs;
    description = "Hostnames, ports, and vHosts for mischief.town services.";

    default = {
      # Glance
      glance = {
        port = 8282;
        vHost = "www.mischief.town";
      };

      forgejo = {
        port = 8193;
        vHost = "git.mischief.town";
      };

      paperless = {
        port = 21594;
        vHost = "docs.mischief.town";
      };

      vaultwarden = {
        port = 8222;
        vHost = "vw.mischief.town";
      };
    };
  };
}
