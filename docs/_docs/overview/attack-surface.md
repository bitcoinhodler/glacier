---
title: Attack surface and failure points
description:
---

This list describes the attack surface and other failure points for Glacier. We
include only attacks and failures limited in scope to specific coins.
Attacks and failures related to the Bitcoin ecosystem as a whole (newly
discovered cryptographic flaws, critical Bitcoin protocol security or
scalability failures, etc.) are not included as most are equally likely to
impact the value of all Bitcoins whether or not they are secured with Glacier.

This list assumes no security measures from Appendix A are implemented.

Most attacks require the presence of malware, either in or near the quarantined environment. We’ll therefore inventory two layers of Glacier’s attack surface:

* Ways in which a malware infection might occur
* Ways in which a critical failure might happen (possibly, but not necessarily, due to a malware infection)

## Malware infection vectors

* Software
  * OS/App software has malware (i.e. malicious code) built into official distributions. In particular, Glacier relies on the following packages and their dependencies NOT to distribute malicious code:
    * Ubuntu desktop
    * Bitcoin Core
    * zbar-tools (via Ubuntu Package archive)
    * qrencode (via Ubuntu Package archive)
  * Malware on Setup Computer infects Setup USB software AND malware on Setup USB infects Quarantined USB software AND checksum verifications produces false positives
    * Checksum false positives could happen becuase:
      * Malware might interfere with the verification process (or the display of its results).
      * The checksum verification software could be compromised.
        * Verifying the integrity of GnuPG requires one have access to a trusted installation of GnuPG, but many Glacier users won’t have that. Glacier currently recommends users simply trust the version of GnuPG they download.
  * Malware on Setup Computer infects OS/App USB software AFTER checksum verification produces a true positive (i.e. before/during copying of software to the USB, or during USB ejection)
* Firmware
  * Malware on Setup Computer infects Setup Boot USB firmware AND malware on Setup Boot USB infects Quarantined Boot/App USB
  * Laptop or USB firmware has malware in the shrinkwrapped package
* Hardware
  * Laptop or USB hardware has “malware” in the shrinkwrapped package

## Failure scenarios

### Electronic failures

* Exfiltration of critically sensitive data (e.g. private keys)
  * A Quarantined Computer leaks critically sensitive data over a side channel (possibly due to malware) AND complementary malware on a (networked or attacker-controlled) device in range steals the data
    * Visual side channel (does not require malware on the quarantined computer, since sensitive data is displayed on the screen as part of the protocol)
    * Acoustic side channel, if inadequately blocked (i.e. insufficient sound blockage or masking noise)( example )
    * Radio side channel ( example 1 , example 2 , example 3 )
    * Seismic side channel ( example )
    * Thermal side channel ( example)
    * Magnetic side channel ( example )
  * Malware on a Quarantined Computer exfiltrates critically sensitive data via QR codes AND cooperating malware on the QR reading device steals the data
  * Critically sensitive data is leaked (intentionally or otherwise) as part of the payload of valid data (e.g. if the nonce used for a transaction signature contains bits of the private key)
* Undetected generation of flawed sensitive data.
(Requires compatible malware present on BOTH quarantined environments)
  * Private key creation is compromised to make keys easily guessable
  * Transaction creation is compromised to use output addresses belonging to an attacker, AND cooperating malware on a networked computer sends the malicious transaction before the manual address verification is done)

### Physical failures

* Two paper keys are stolen by an attacker
* All (or all but one) paper keys are lost or destroyed
* An attacker with physical line-of-sight to the laptop takes a photo of the screen while sensitive data is displayed
* Malware on the quarantined machines writes sensitive data to persistent media (USB or laptop hard drive) AND the hardware is physically stolen afterward

### Glacier protocol failures
* Glacier hosting (i.e. DNS, Github, website hosting, etc.) is compromised
to inject weaknesses into the protocol documentation or GlacierScript
* Protocol delivery is compromised (e.g. with
a man-in-the-middle attack on the user’s computer or network) to deliver
or display a weakened version of the protocol documentation or
software
* Protocol hardcopy is compromised (e.g. by malware to alter the user’s hardcopy as it is printed)
* A flaw in GlacierScript causes sensitive data to be leaked or flawed
* Human error during protocol execution
* Design failure in the protocol misses or inadequately addresses a risk

For potential man-in-the-middle vulnerabilities, we mitigate this by signing a
checksum of the Glacier document itself, and including steps in the protocol for
users to verify the signature and checksum. But this is not foolproof:


An attacker could remove the self-verification procedure from the protocol document,
and many users would not notice.
* An attacker could compromise our keypair and create a fraudulent signature
(although this is exceedingly unlikely, due to Keybase’s key verification systems)
* The protocol document  does  begin with document self-verification on one Setup
Computer. However, it doesn’t guide the user through self-verification on the second
Setup Computer. Nor does it have them re-verify the document when they first boot
into Ubuntu on the Setup Computers to create the Quarantined Boot USBs. If the
portion of the protocol document related to creating the Quarantined Boot USBs were
compromised between the initial self-validation & the later re-validation (when
creating the Quarantined App USBs), the user would probably not notice, even without
a forged signature.
* Protocol hardcopy is compromised (e.g. by malware to alter the user’s hardcopy as
it is printed)
* A flaw in GlacierScript causes sensitive data to be leaked or flawed
* Human error during protocol execution
* Design failure in the protocol misses or inadequately addresses a risk
