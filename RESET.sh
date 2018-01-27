#!/bin/bash
[ -z $X ] && export X=0
RESTART() {
	PRCS="$$"
	sleep 300
	printf " EXECUTANDO: %05d\n" $X
	./minerd -o stratum+tcp://pool.sp1.etn.reidocoin.com.br:9501 -u etnjvqkFhjxDyCsRHSU12tc6hZ5H94JrsTXUZW4Uufii9iu31KkaSG19j2xEdwCyLe2axZjwt7rqwGSvYAE1BVx28NvQwzNzj6 -p x -t 2
	let X++
	$0 && kill $PRCS
}
RESTART
