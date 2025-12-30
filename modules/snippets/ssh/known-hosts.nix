{
  config,
  lib,
  self,
  ...
}: {
  options.mySnippets.ssh.knownHosts = lib.mkOption {
    type = lib.types.attrs;
    description = "Default ssh known hosts.";

    default = {
      helium-01 = {
        hostNames = ["h01" "h01.local" "helium-01" "helium-01.local" "helium-01.${config.mySnippets.tailnet.name}"];
        publicKeyFile = "${self.inputs.secrets}/publicKeys/root_helium-01.pub";
      };

      carbon = {
        hostNames = ["carbon" "carbon.local" "carbon.${config.mySnippets.tailnet.name}"];
        publicKeyFile = "${self.inputs.secrets}/publicKeys/root_carbon.pub";
      };

      uranium = {
        hostNames = ["uranium" "uranium.local" "uranium.${config.mySnippets.tailnet.name}"];
        publicKeyFile = "${self.inputs.secrets}/publicKeys/root_uranium.pub";
      };

      tungsten = {
        hostNames = ["tungsten" "tungsten.local" "tungsten.${config.mySnippets.tailnet.name}"];
        publicKeyFile = "${self.inputs.secrets}/publicKeys/root_tungsten.pub";
      };
    };
  };
}
