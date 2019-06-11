OpenVPN Train9 Setup:

If you are using Windows, download from https://openvpn.net/index.php/open-source/downloads.html.
If you are using macOS, download from https://tunnelblick.net/downloads.html.
If you are using Linux, install openvpn-client with package managers.

Then, download train9.ovpn and open it. Use your Accounts9 credentials to login.

When connection succeeded, you can ssh into machines with ip of format 172.16.0.{100..1xx}.

To connect to SSH, you can:
1. If you are using Windows, you can use ssh under WSL or PuTTY(see putty.zip).
2. Otherwise, install ssh with package managers, and then execute `ssh newcomer@ip`.