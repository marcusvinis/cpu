#!/bin/bash
#########################
## mso-FEV/2016-Rev:XX ##
#########################

START() {
	#printf "Download do arquivo:\nm-minerd-64-linux.tar.gz\n"
	#git clone https://github.com/wolf9466/cpuminer-multi
	#printf "Download finalizado\nDescompactando . . .\n\n"
	#tar -xzvf m-minerd-64-linux.tar.gz
	printf "\nDescompactado.\nMovendo:\nm-minerd\nm-minerd.sh Para a pasta $PWD\nDando permissao de execuçao para \"minerd.sh\"\n"
	mv cpuminer-multi/minerd minerd
	mv cpuminer-multi/minerd.sh minerd.sh
	chmod +x minerd.sh
	printf "\nDONE! \n1ª etapa concluida.\n\nLista de arquivos:\n$(ls -l|sed 1d|egrep ^'-rw'|awk '{print $9}')
	\nExecutando pela 1ª vez, o COMANDO:\n./m-minerd -o stratum+tcp: . . .\n"
	printf "INíCIO\nEXECUTADO PELO $0\nEM: => %(%x::%X::%Z)T\n"
	./minerd -o stratum+tcp://etn-us-east1.nanopool.org:13333 -u etnjvqkFhjxDyCsRHSU12tc6hZ5H94JrsTXUZW4Uufii9iu31KkaSG19j2xEdwCyLe2axZjwt7rqwGSvYAE1BVx28NvQwzNzj6.teste2_WORKER/pedro_gpi320@hotmail.com -p x -t 4
	./RESET.sh && exit
}

START
