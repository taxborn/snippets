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
      };

      loki.port = 3100;
      prometheus.port = 9090;
      nodeExporter.port = 9100;

      forgejo = {
        hostname = "100.64.2.0";
        port = 8193;
        vHost = "git.mischief.town";
      };

      glance = {
        port = 8282;
        vHost = "www.mischief.town";
      };

      immich = {
        port = 8272;
        vHost = "img.mischief.town";
      };

      paperless = {
        port = 21594;
        vHost = "docs.mischief.town";
      };

      pds = {
        port = 8086;
        gatekeeperPort = 8087;
        vHost = "pds.mischief.town";
      };

      tangled-knot = {
        port = 9004;
        internalPort = 30106;
        vHost = "knot.mischief.town";
      };

      tangled-spindle = {
        port = 9005;
        vHost = "spindle.mischief.town";
      };

      taxborn-com = {
        port = 8194;
        vHost = "taxborn.com";
      };

      vaultwarden = {
        port = 8222;
        vHost = "vw.mischief.town";
      };

      copyparty = {
        port = 3923;
        vHost = "i.mischief.town";
      };

      grafana = {
        port = 3000;
        vHost = "dash.mischief.town";
      };
    };
  };
}
