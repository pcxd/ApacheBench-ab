
apr-skeleton: src/apr-skeleton.c 
	gcc src/apr-skeleton.c -o apr-skeleton -I./apr/include/ -L./apr/lib -lapr-1 `pkg-config apr-1 --cflags` 

ab: src/ab.c src/ap_release.h
	gcc src/ab.c src/ap_release.h -o ab -I./apr/include/ -L./apr/lib -lapr-1 `pkg-config apr-1 --cflags` -laprutil-1 -lm

clean:
	rm ab apr-skeleton

