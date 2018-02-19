---
title: Transfer cold storage data to paper
description:
---

In this section, you’ll move the cold storage data you generated in Section I from the quarantined computing environments onto physical paper. This will be done using a combination hand transcription and [QR codes](https://en.wikipedia.org/wiki/QR_code){: target="_blank" ._}.

1. Transfer the <span class="danger">private keys</span> to paper.
  a. Write each <span class="danger">private key</span> on a separate piece of TerraSlate paper ( one key per page).
    i. Do not write anything else on the paper unless specifically instructed (such as “Bitcoin”, “Glacier”, “private key”, etc.) In the event the key is seen by someone untrustworthy or stolen by a random thief, such clues help them understand the significance of the key and give them an incentive to plot further thefts or attacks.
    ii. Transcribe by hand. Do not use QR codes or any other method to transfer.
    iii. Private keys are case-sensitive.
    iv. Write clearly.
      1. Use care when transcribing “o” (lower-case “o”). Note that private keys do not contain “O” (upper-case “o”) or “0” (number zero).
      2. Use care when transcribing “1” (number one). Note that private keys do
      not contain "I" (uper case "i") or "l" (lower-case "L")
      3. Use care to distinguish between "t" and "+" (private keys don not contain plus signs)
      4. Use care to distinguish between "2" and "Z"
      5. Use care to distinguish between "5" and "S"
      5. Use care to distinguish between "6" and "b"
      6. Use care to distinguish between "6" and "G"
      7. Use care to distinguish between "K" and "k"
      8. Use care to distinguish between "5" and "S"
      9. Use care to distinguish between "u" and "v"
      10. Use care to distinguish between "U" and "v"
  b. Double-check that you transcribed all <span class="danger">private keys</span> correctly. If you make a mistake, you’ll have to redo a lot of work.
  c. Label each page with:
    i. Today’s date
    ii. The version of Glacier used (listed on the front page of this document)
2. Visually hide all critically sensitive data.

  We’ll be using a smartphone with a live Internet connection to read QR codes from the quarantined computer screens. Any malware (or a malicious QR reader app) could steal sensitive data if it is not visually hidden.

  This step is important. Failing to execute it properly creates a substantial security risk.

  a. Put your <span class="danger">handwritten private keys</span> out of sight (don’t just turn them face down; paper is not completely opaque). This prevents a smartphone camera from accidentally seeing them.
  b. Delete all text from the Quarantined Scratchpad on the Q1 and Q2 computers.
  c. On the Q1 computer:
    i. Type “COLD STORAGE ADDRESS” into the Quarantined Scratchpad.
    ii. Copy-paste the <span class="warning">cold storage address</span> from the terminal window to the Quarantined Scratchpad.
    iii. Type “REDEMPTION SCRIPT” into the Quarantined Scratchpad.
    iv. Copy-paste the <danger class="warning">redemption script</danger> from the terminal window to the Quarantined Scratchpad.
    v. Enable line wrapping so the entire <span class="warning">redemption script</span> can be seen.
      1. With the Quarantined Scratchpad window active, go to the menu bar at the top of the screen.
      2. Select Edit.
      3. Select Preferences.
      4. Select the View tab.
      5. Uncheck “Do not split words over two lines”.
  d. Clear the terminal windows on the Q1 and Q2 computers. $ clear
3. QR reader setup
  a. Remove a smartphone from the Faraday bag and turn it on.
  b. If the smartphone doesn’t already have a QR code reader on it, install one.

  Any reader is fine as long as it can read all types of QR codes, but
  here are recommendations we’ve tested with Glacier:
  [iOS](https://itunes.apple.com/us/app/qr-reader-for-iphone/id368494609?mt=8){: target="_blank" ._},
  [Android](https://play.google.com/store/apps/details?id=com.application_4u.qrcode.barcode.scanner.reader.flashlight&hl=en){: target="_blank" ._}.

4. Transfer the <span class="warning">cold storage address</span> to a non-quarantined computer.
  a. On the Q1 computer, display the <span class="warning">cold storage address</span> as a <span class="warning">QR code</span> on the screen: i. In File Manager, navigate to the “Home” folder, then the “glacier” folder, and double-click “address.png”.
  b. Use the smartphone’s QR code reader to read the. When the is
  successfully read, the smartphone should display the text <span class="warning">cold storage address</span>
  c. Verify the <span class="warning">cold storage</span> address on the smartphone matches the cold storage address in the Quarantined Scratchpad.

  **If it does not match, do not proceed**. Try using a different QR reader application or restarting the Deposit Protocol. Seek
  assistance if discrepancies persist.

  d. Use the smartphone to send the <span class="warning">cold storage address</span> to yourself using a messaging app which you’ll be able to access from a laptop. (E-mail is not recommended for security reasons.)

5. Repeat the previous step for the <span class="warning">redemption script</span>, stored in “redemption.png.”

  When comparing the redemption script shown on the smartphone to the redemption script in the Quarantined Scratchpad, it’s sufficient to check the first 8 characters, the last 8 characters, and a handful of characters somewhere in the middle.
6. Power down the smartphone and return it to the Faraday bag.
7. Shut down **both** quarantined computers entirely. As a precaution against side
channel attacks, the quarantined computers should not be active except when they
absolutely need to be.
  ```
  $ sudo shutdown now
  ```
The recommended Acer laptop may require you to hold down the power button for several seconds to complete the shutdown.
8. Create <span class="warning">Cold Storage Information Pages</span>
  Using any Internet-connected computer:
  a. Access the copies of the <span class="warning">cold storage address</span> and <span class="warning">redemption script</span> you sent yourself from your smartphone previously.
 b. Open an empty document in any text editing application. This will be used to create the <span class="warning">Cold Storage Information Page</span>.
 c. Put the following information into the document:
  i. Copy-paste the <span class="warning">cold storage address</span>
  ii. Copy-paste the <span class="warning">redemption script</span>
  iii. Type today’s date
  iv. Type the version of Glacier used (listed on the first page of this document)
  d. Do **not** put anything else in the document (such as “Bitcoin”, “Glacier”,
“private key”, etc.)
  e. Save an electronic copy of the <span class="warning">Cold Storage Information Page</span> in a “conventionally secure” location of your choosing,
  such as a “Secure Note” in 1Password or a comparable password
  manager. Because the Cold Storage Information Page contains
  moderately-sensitive data, there are some privacy considerations with keeping and
  electronic copy of it. See the Sensitive Data subsection for details.
  f. Print N copies of the <span class="warning">Cold Storage Information Page</span>.
  g. Shut down the computer. (It has a camera, and you will be working with critically sensitive data in a moment.)
9. Prepare <span class="danger">Cold Storage Information Packets</span>
  a. Put each <span class="danger">handwritten private key page</span> along with one Cold <span class="warning">Storage Information Page</span> in its own opaque envelope. While this obviously won’t deter a determined
  thief, it makes it quite difficult for a thief to steal a key without leaving
  evidence they have done so -- and noticing theft of a single key gives you a
  chance to move your funds away before the thief can steal a second key.
  b. Each pair of pages will be referred to as a <span class="danger">Cold Storage Information Packet</span>.
  c. Put your <span class="danger">Cold Storage Information Packets</span> somewhere out of sight for the moment.
