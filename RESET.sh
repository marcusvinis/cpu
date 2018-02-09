#!/bin/bash
[ -z $X ] && export X=0
RESTART() {
	PRCS="$$"
	sleep 300
	printf " EXECUTANDO: %05d\n" $X
	./minerd -o stratum+tcp://xmr.pool.minergate.com:45560 -u pedro_gpi320@hotmail.com -p x -t 2
	let X++
	$0 && kill $PRCS
}
RESTART
