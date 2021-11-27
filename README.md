# CFSSL

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/cfssl.svg)](https://hub.docker.com/r/jitesoft/cfssl)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)
[![pipeline status](https://gitlab.com/jitesoft/dockerfiles/cfssl/badges/master/pipeline.svg)](https://gitlab.com/jitesoft/dockerfiles/cfssl/commits/master)

This image contains the tools provided by the Cloudflare [CFSSL](https://cfssl.org/) package, running on alpine linux.  
The image uses a non-root user (cfssl u: 1000, g: 1000) and is built from source for amd64, arm64, armv7, x390s, ppcle64.

## Tags

Tags are based on the release tag in the git [repository](https://github.com/cloudflare/cfssl), `latest` is the latest version available.

### Registries

The `jitesoft/cfssl` images should be possible to find at the following registries:

* `docker.io/jitesoft/cfssl` (or just `jitesoft/cfssl`)
* `registry.gitlab.com/jitesoft/dockerfiles/cfssl`
* `ghcr.io/jitesoft/cfssl`
* `quay.io/jitesoft/cfssl`

_Observe: Push to quay.io currently disabled and images might be old due to quay not fully supporting multi-arch images._

### Dockerfile

Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/cfssl) and [GitHub](https://github.com/jitesoft/docker-cfssl).

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

This repository and the files therein are released under the [MIT](https://gitlab.com/jitesoft/dockerfiles/cfssl/blob/master/LICENSE) license.  
CFSSL is released under the [BSD 2-Clause "Simplieifed"](https://github.com/cloudflare/cfssl/blob/master/LICENSE) license.

### Signature

Cosign public key for this image can be found at [https://jitesoft.com/cosign.pub](https://jitesoft.com/cosign.pub).

### Sponsors

Jitesoft images are built via GitLab CI on runners hosted by the following wonderful organisations:

<a href="https://fosshost.org/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/fosshost.png" height="128" alt="Fosshost logo" />
</a>
<a href="https://www.aarch64.com/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/aarch64.png" height="128" alt="Aarch64 logo" />
</a>

_The companies above are not affiliated with Jitesoft or any Jitesoft Projects directly._

---

Sponsoring is vital for the further development and maintaining of open source.  
Questions and sponsoring queries can be made by <a href="mailto:sponsor@jitesoft.com">email</a>.  
If you wish to sponsor our projects, reach out to the email above or visit any of the following sites:

[Open Collective](https://opencollective.com/jitesoft-open-source)  
[GitHub Sponsors](https://github.com/sponsors/jitesoft)  
[Patreon](https://www.patreon.com/jitesoft)

