{ lib, stdenv, buildGoModule, fetchFromGitHub }:
buildGoModule rec {
  pname = "babelfish";
  version = "0.1.3";

  src = fetchFromGitHub {
    owner = "bouk";
    repo = "babelfish";
    rev = "v${version}";
    sha256 = "08i4y4fw60ynamr1jz8nkfkidxj06vcyhi1v4wxpl2macn6n4skk";
  };

  vendorSha256 = "0xjy50wciw329kq1nkd7hhaipcp4fy28hhk6cdq21qwid6g21gag";

  meta = with lib; {
    description = "A Go package that embeds static files into a binary";
    homepage = "https://github.com/GeertJohan/go.rice";
    license = licenses.bsd2;
    maintainers = [ maintainers.hazel ];
  };
}

