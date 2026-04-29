{
  config,
  lib,
  self,
  ...
}:
{
  # TODO: Incorporate this into my SSH config????
  options.mySnippets.ssh.knownHosts = lib.mkOption {
    type = lib.types.attrs;
    description = "Default ssh known hosts.";

    default = {
      helium = {
        hostNames = [
          "helium"
          "helium.local"
          "helium.${config.mySnippets.tailnet.name}"
        ];
        publicKeyFile = "${self.inputs.secrets}/publicKeys/root_helium.pub";
      };

      carbon = {
        hostNames = [
          "carbon"
          "carbon.local"
          "carbon.${config.mySnippets.tailnet.name}"
        ];
        publicKeyFile = "${self.inputs.secrets}/publicKeys/root_carbon.pub";
      };

      uranium = {
        hostNames = [
          "uranium"
          "uranium.local"
          "uranium.${config.mySnippets.tailnet.name}"
        ];
        publicKeyFile = "${self.inputs.secrets}/publicKeys/root_uranium.pub";
      };

      tungsten = {
        hostNames = [
          "tungsten"
          "tungsten.local"
          "tungsten.${config.mySnippets.tailnet.name}"
        ];
        publicKeyFile = "${self.inputs.secrets}/publicKeys/root_tungsten.pub";
      };
    };
  };
}
