{ lib, ... }:
{
  options.mySnippets.mischief-town.networkMap = lib.mkOption {
    type = lib.types.attrs;
    description = "Hostnames, ports, and vHosts for mischief.town services.";

    default = {
      tailscaleIPs = {
        uranium = "100.64.0.0";
        tungsten = "100.64.0.1";
        "helium-01" = "100.64.1.0";
        carbon = "100.64.2.0";
        argon = "100.64.2.1";
      };

      loki.port = 3100;
      prometheus.port = 9090;
      nodeExporter.port = 9100;

      forgejo = {
        hostname = "100.64.2.0";
        port = 8193;
        sshPort = 2222;
        vHost = "git.mischief.town";
      };

      glance = {
        port = 8282;
        vHost = "www.mischief.town";
      };

      immich = {
        port = 8272;
        vHost = "immich.tucuxi-hexatonic.ts.net";
      };

      paperless = {
        port = 21594;
        vHost = "paperless.tucuxi-hexatonic.ts.net";
      };

      pds = {
        port = 8086;
        vHost = "pds.mischief.town";
      };

      hash-haus = {
        port = 8195;
        vHost = "hash.haus";
      };

      taxborn-com = {
        port = 8194;
        vHost = "taxborn.com";
      };

      vaultwarden = {
        port = 8222;
        vHost = "vw.mischief.town";
      };

      grafana = {
        port = 3000;
        vHost = "grafana.tucuxi-hexatonic.ts.net";
      };
    };
  };
}
