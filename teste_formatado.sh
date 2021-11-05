#!/bin/sh

Assunto="SIESTA - LSIM 2"
E_FERMI="-5.046545451"
Nome="Tony Anderson"
SystemLabel="tBN80-tricloro-7"



cat << EOF > email.html
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <style>
        p {
            font-size: 14px;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            line-height: 1.42857143;
            color: white;
        }
    </style>

    <h1>Cálculo Finalizado</h1>
    <p>Olá, ${Nome}, seu cálculo <b>
            <font color="green">${SystemLabel}</font>
        </b> foi finalizado.</p>
    <p>Aqui estão alguns dados:</p>

    <code>
        -------------------------------       <br>
        Energia de Fermi: ${E_FERMI}          <br>
        -------------------------------       <br>
    </code>

    <p>
        Os arquivos <code>${arquivo_out}</code>, <code>${bandas-fermi}.dat</code> e <code>${SystemLabel}.bands</code> foram anexados ao email.
    </p>
</body>

</html>
EOF


# cat email.html



mutt -e "set content_type=text/html" -s "Assunto Aqui shjshjhd" -a saida.txt -- anderson.tony@discente.ufma.br  < email.html

# anderson.tony@discente.ufma.br