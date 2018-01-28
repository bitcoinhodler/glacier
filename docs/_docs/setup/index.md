---
title: Verify and print protocol document
description:
---

The Setup Protocol is used to prepare hardware, and download and verify needed
software & documentation.

The first thing we need to do is verify the integrity of
the Glacier protocol document (the one you are reading) to ensure that it
has not been tampered with. After verifying the document, we’ll print
a hardcopy.

1. Find a computer which has Internet access, printer
  access, and which you have permission to install new software on.
  We’ll refer to this computer as the “SETUP 1” computer.
2. Review the errata for the version of Glacier you are using at
https://glacierprotocol.org/errata .
3. Download the latest full release of Glacier ( not just the protocol document)
at https://glacierprotocol.org/releases .
4. If your browser does not automatically extract the ZIP file contents into a folder within your downloads directory, do so.
5. Rename the folder to “glacier.”
6. If you
have used Glacier before, and you know you have the Glacier public key
imported into a local GPG keyring, skip the next step. (If you don’t know,
that’s fine; proceed as normal.)
7. Obtain the Glacier “public key,” used to cryptographically verify the
protocol document.
If you are ever
using Glacier in the future and notice that this step has changed (or that
this warning has been removed), there is a security risk. Stop and seek
assistance.

  a. Access Glacier’s Keybase profile at https://keybase.io/glacierprotocol .
  b. Click the string of letters and numbers next to the key icon.
  c. In the pop-up that appears, locate the link reading “this key”.
  d. Right-click the link and select “Save Link As...” or “Download Linked File
  As...”
  e. Name the file “glacier.asc”.

8. Download and install GnuPG , the software we’ll use for doing the cryptographic verification.28 29

  a. Windows: Download and install the latest available version of Gpg4win . Use
  the default options.
  b. macOS: Download and install the latest available version of GPG Suite .
  c. Linux: GnuPG comes pre-installed with Linux distributions.

9. Open

  a. Windows: Press Windows-R, type “powershell” and click OK.
  b. macOS: Click the Searchlight (magnifying glass) icon in the menu bar, and
  type a terminal window. “terminal”. Select the Terminal application from the
  search results.
  c. Linux: Varies; on Ubuntu, press Ctrl-Alt-T.

10. Change the terminal window’s active folder to your downloads folder. The commands below are based on common default settings; if you put your downloads is in a different place, you will need to customize this command.

  a. Windows:  > cd $HOME/Downloads/glacier
  b. macOS:  $ cd $HOME/Downloads/glacier
 c. Linux: $ cd $HOME/Downloads/glacier

11. Verify the integrity of the downloaded document.

  a. Import the Glacier public key
  into your local GPG installation:
  $ gpg --import $HOME/Downloads/glacier.asc
  b. Use the public key to verify that the Glacier “fingerprint file” is legitimate:
  $ gpg --verify SHA256SUMS.sig SHA256SUMS

  Expected output (timestamp will vary, but e-mail and fingerprint should match):

  ```
  gpg: Signature made Thu Jan 19
  13:45:48 2017 PST using RSA key ID 4B43EAB0
  gpg: Good signature from "Glacier Team <contact@glacierprotocol.org>" [unknown]
  gpg: WARNING: This key is not certified with a trusted signature!
  gpg:     There is no indication that the signature belongs to the
  owner.
  Primary key fingerprint: E1AA EBB7 AC90 C1FE 80F0
  1034 9D1B 7F53 4B43 EAB0
  ```

  The warning message is expected, and is not cause for alarm.

  c. Verify the fingerprints in the fingerprint file match the fingerprints of the downloaded Glacier files.

    i. On Linux or Mac:
    Linux: $ sha256sum -c SHA256SUMS 2>&1
    Mac: $ shasum -a 256 -c
    SHA256SUMS 2>&1
    Expected output:
    ```
    Glacier.pdf: OK glacierscript.py: OK
    base58.py: OK README.md: OK
    ```

    On Windows:
    ```
    > Get-FileHash -a sha256 Glacier.pdf
    > cat SHA256SUMS | select-string -pattern "Glacier.pdf"
    ```

    Ensure that the hash output from the first command matches the output by the second command. Upper/lower case doesn’t matter.

    d. If you do not see the expected output, your copy of the document has not been verified. Stop and seek assistance.

12. Switch to use the new document.
  a. Open the version of the document that you just verified.
  b. Close this window (of the unverified version of the document you had been
  using).
  c. Delete the old, unverified copy of the document.

13. Print the verified document.

You are strongly encouraged to use the printed copy as a checklist, physically
marking off each step as you complete it. This reduces the risk of execution
error by ensuring you don’t lose your place.
