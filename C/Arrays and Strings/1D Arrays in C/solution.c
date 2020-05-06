#include <stdio.h>


int main() {
    int n;
    scanf("%d", &n);

    int sum = 0;
    int val;

    for (int i = 0; i < n; i++) {
        scanf("%d", &val);
        sum += val;
    }

    printf("%d", sum);

    return 0;
}

