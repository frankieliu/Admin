for x in *.pdf; do qpdf --password=birds --decrypt $x Decrypt/$x; done
