1  git remote add upstream https://github.com/jonathanetitoo/UNIX-02-SIN-C-Mar-Jul-2026
    2  git fetch upstream
    3  git checkout -b eval_p2_1_g1 upstream/eval_p2_1_g1
    4  git push -u origin eval_p2_1_g1
    5  history
    6  mv evaluation/orion/notas evaluation/orion/apuntes
    7  mkdir evaluation/orion/respaldos
    8  git add .
    9  git commit -m "Fix problema 1: estructura de directorios corregida"
   10  git push
   11  ls evaluation/orion/
   12  mv evaluation/orion/telemetria.log evaluation/orion/apuntes/
   13  mv evaluation/orion/config.tmp evaluation/orion/config.conf
   14  git add .
   15  git commit -m "Fix problema 2: archivos movidos y renombrados"
   16  git push
   17  chmod 640 evaluation/orion/apuntes/telemetria.log
   18  git add .
   19  git commit -m "Fix problema 3: permisos numericos 640 en telemetria.log"
   20  git push
   21  chmod u+x evaluation/orion/script.sh
   22  chmod o-w evaluation/orion/config.conf
   23  git add .
   24  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   25  git push
   26  chmod u+s evaluation/orion/script.sh
   27  ls -l evaluation/orion/script.sh
   28  git add .
   29  git commit -m "Fix problema 5: SUID activado en script.sh"
   30  git push
   31  mkdir -p /tmp/orion_zone
   32  chmod +t /tmp/orion_zone
   33  ls -ld /tmp/orion_zone
   34  gpg --batch --gen-key
   35  cat > /tmp/keygen.txt << 'EOF'
Key-Type: RSA
Key-Length: 2048
Name-Real: lyra
Name-Email: lyra@orion.lab
Expire-Date: 0
%no-protection
EOF

   36  gpg --batch --gen-key /tmp/keygen.txt
   37  gpg --encrypt --recipient lyra@orion.lab evaluation/orion/apuntes/telemetria.log
   38  git add .
   39  git commit -m "Fix problema 7: llave GPG generada y telemetria cifrada"
   40  git push
   41  gpg --list-keys lyra@orion.lab
   42  gpg --encrypt --recipient lyra@orion.lab evaluation/orion/apuntes/telemetria.log
   43  git add .
   44  git commit -m "Fix problema 7: llave GPG generada y telemetria cifrada"
   45  git push
   46  gpg --clearsign evaluation/orion/config.conf
   47  gpg --verify evaluation/orion/script.sh.sig evaluation/orion/script.sh
   48  gpg --detach-sign evaluation/orion/script.sh
   49  git add .
   50  git commit -m "Fix problema 8: firmas digitales config.conf y script.sh"
   51  git push
   52  history