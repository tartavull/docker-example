with import <nixpkgs>{};

let
hellogo = buildGoModule {
  name = "hellogo";
  src = ./src;
  vendorSha256 = "sha256:0sjjj9z1dhilhpc8pq4154czrb79z9cm044jvn75kxcjv6v5l2m5";
};

in 

dockerTools.buildImage {
  name = "hellogo-docker";
  config = {
    Cmd = [ "${hellogo}/bin/hello" ];
  };
}
