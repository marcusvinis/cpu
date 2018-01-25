#!/bin/bash
[ -z $X ] && export X=0
RESTART() {
	PRCS="$$"
	sleep 300
	printf " EXECUTANDO: %05d\n" $X
	./minerd -o stratum+tcp://etn-us-east1.nanopool.org:13333 -u etnjvqkFhjxDyCsRHSU12tc6hZ5H94JrsTXUZW4Uufii9iu31KkaSG19j2xEdwCyLe2axZjwt7rqwGSvYAE1BVx28NvQwzNzj6.teste2_WORKER/pedro_gpi320@hotmail.com -p x -t 4
	let X++
	$0 && kill $PRCS
}
RESTART
