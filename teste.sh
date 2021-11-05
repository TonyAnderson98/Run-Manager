#!/bin/sh

Assunto="SIESTA - LSIM 2"
E_FERMI="-5.046545451"
Nome="Tony Anderson"
SystemLabel="tBN80-tricloro-7"




(
    echo "<h1>Cálculo Finalizado</h1>"
    echo ""
    echo "Olá, ${Nome}, seu cálculo <b><font color="green">${SystemLabel}</font></b> foi finalizado. <br><br>"
    echo ""
    echo "Aqui estão alguns dados: <br>"
    echo "-------------------------<br>"
    echo "Energia de Fermi: ${E_FERMI}<br>"
    echo "-------------------------<br>"
) > email.html

# cat email.html



(
  echo "Content-Type: text/html; "
  echo "To: anderson.tony@discente.ufma.br"
  echo "Subject: $Assunto"
  cat email.html) | sendmail -t

  
  # mail -s "$(echo -e "This is the subject\nContent-Type: text/html")" foo@example.com
  
  #sendmail -t anderson.tony@discente.ufma.br -A /home/tony/MEGA/GitHub/Run-Manager/Saida.out




# rm email.html