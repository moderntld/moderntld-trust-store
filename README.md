# ModernTLD Trust Store

This is the trust store ModernTLD uses for ct.moderntld.net and other CA related operations for OpenNIC. This store should in no way be considered comprehensive and the roots contained should in no way be considered trustworthy. When installing certificate authorities on your personal device for OpenNIC websites please ensure you trust the operator of each authority.

## Inclusion

All certificate authorities that *only* provide domains for OpenNIC top-level domains can be considered for inclusion in this trust store. Inclusion will permit you to submit certificates to our Certificate Transparency service and other services to be announced in the future.

### Policies

To be considered for inclusion, your CA must meet the following requirements:

* The operator must be a member of the [`tlsca-wg`](https://lists.opennicproject.org/sympa/info/tlsca-wg) mailing list for critical updates and notices regarding the operation of their root and community updates.
* You must only sign certificates for OpenNIC domains (some or all of our TLDs), our peered domains, and users.
* You must only grant certificates to entities you believe are the rightful owners of a resource.

### Submission

To submit your Root CA, please create a new file in `authorities/root/[ORGANIZATION-NAME]/[NAME-OF-ROOT-CN].pem`. For example, see: `authorities/root/ModernTLD/ModernTLD-CA-X3.pem` (note: spaces replaced with `-`s in filename).

If your certificate authority does not

* represent an organization or large entity, AND/OR
* provide certificates to the public

create it in the `authorities/root/personal/` folder.

Submit a pull request with a comment including the following information:

* Email (must match subscriber email to `tlsca-wg`).
* TLDs you will sign certificates for.
* Link to public website used for requesting certificates (if applicable).
* Anything else you'd like noted.

If a certificate signed by your authority is in use on a public OpenNIC website, please include a link to that as well.

**Please note** there is no reason to submit an intermediate certificate authority, they are included mainly for convenience. If your intermediate CA(s) provide(s) many (100+) certificates to the public you may include (it/them) in the submission along with your root CA if you wish, otherwise submit only the root certificate.

### Release Notes

Finally, your certificate may be included in this store. Note that this will not immediately allow access to our Certificate Transparency service, etc. until it is included in a latest release. [See all releases here](https://github.com/moderntld/opennic-trust-store/releases) and make note of when your authority was included.

## Trustworthiness

The certificates contained in this repository have not been audited or tested for integrity. We will immediately remove certificates not adhering to our inclusion policies outlined above as they are reported, but we do not currently have the capability to monitor every root at this time. Before installing any root certificates please consider the CA operator's policies, community standing, signed certificate count, etc. Installing custom root CAs can harm your computer's security in numerous ways. Read [www.moderntld.com/ca](https://www.moderntld.com/ca) for more information.

## Release Building

Run `release.bat` with the next version number to build release files.
