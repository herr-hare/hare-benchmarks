#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int isprime(long l) {
	long t = sqrtl(l);
	for (long i=2; i<=t; i++) {
		if (l % i == 0)
			return 0;
	}
	return 1;
}

int main(int argc, char **argv) {
	if (argc != 2)
		return -1;
	long target = atol(argv[1]);
	long cnt = 0;
	for (long l=2; l<target; l++) {
		if (isprime(l))
			cnt++;
	}
	printf("%li\n", cnt);
	return 0;
}
