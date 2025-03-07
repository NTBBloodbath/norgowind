{ pkgs, config, ... }:

let root = "${config.env.DEVENV_ROOT}"; in
{
  packages = with pkgs; [
    rustywind # Organize Tailwind CSS classes
    watchman # required by tailwindcss CLI for watch functionality
    tailwindcss_4
    tailwindcss-language-server
  ];

  languages.nix.enable = true;
}
