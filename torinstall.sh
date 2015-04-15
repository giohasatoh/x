    #!/bin/sh
    echo "
    ######################################
    #    TOR Installer By Giohasatoh     #
    #    Usage: chmod 777 install.sh     #
    #         Run: ./install.sh          #
    #        twitter: @giohasatoh        #
    ######################################
    "
    echo "deb  http://deb.torproject.org/torproject.org wheezy main" >> /etc/apt/sources.list
    clear scr
    echo "[*] Installation of the keys...."
    gpg --keyserver keys.gnupg.net --recv 886DDD89
    gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
    echo "Done!!"
    clear scr
    echo "[*] Updateing repositories...."
    apt-get update
    clear scr
    echo "[*] Installation of TOR"
    apt-get install deb.torproject.org-keyring
    apt-get install tor
    echo "Done!!"
    clear scr
    echo "[*] Installation of Privoxy"
    apt-get install privoxy
    echo "[*] Configuration of privoxy"
    echo "forward-socks5 / 127.0.0.1:9050 ." >> /etc/privoxy/config
    echo "Done!!"
    clear scr
    echo "Starting TOR and PRIVOXY..."
    service tor restart
    service privoxy restart
    echo "Done!!"
    clear scr
    echo "Configure TOR and PRIVOXY to Launch on Startup"
    update-rc.d tor enable
    update-rc.d privoxy enable
    echo "Done!!"
    clear scr
    echo "Installation and Configuration of TOR and PRIVOXY finished!!!"
    echo "Giohasatoh"


