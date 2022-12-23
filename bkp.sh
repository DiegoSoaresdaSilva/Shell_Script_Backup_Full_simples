#Backup simples Full 1.0

#!/bin/bash
#Origem
  backup_arquivos="/home/usuario/Documentos /etc/netplan /var/log/daily-backup.log"
#Destino
  destino="/montagem"
#Identificação dia,hora,mês
  dia=$(date +%d-%m-%y)
#Identificação hotmame da máquina que será backupeada
  hostname=$(hostname -s)
#Nome final do arquivo de backup
  arquivo="$hostname-$dia.tar.gz"
#Log
  log_file="/var/log/daily-backup.log"

  sleep 1

   echo "Backup iniciado: $backup_arquivos para o $destino"

  sleep 1

  tar -zcvf $destino/$arquivo $backup_arquivos

  sleep 1

   echo "[$dia] Backup realizado com sucesso!" >>$log_file

  ls -lh $destino
