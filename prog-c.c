#include <stdio.h>

int main() {
	unsigned char arr[10] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
	int sum = 0;

	for (int i = 0; i < 10; i++) {
		arr[i] |= 0b00001000;
		sum += arr[i];
	}
	printf("%d\n", sum);

	return 0;
}
