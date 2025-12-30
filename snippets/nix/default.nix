{lib, ...}: {
  options.mySnippets.nix.settings = lib.mkOption {
      type = lib.types.attrs;
      description = "Default nix settings shared across machines.";

      default = {
        experimental-features = [
          "flakes"
          "nix-command"
        ];

        trusted-users = ["taxborn" "@admin" "@wheel"];
      };
    };
  };
}
