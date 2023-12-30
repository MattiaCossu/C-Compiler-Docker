#include <stdio.h>
#include <time.h>

int main() {
    time_t now;
    struct tm *info;
    char buffer[80];

    time(&now);

    info = localtime(&now);
    strftime(buffer, sizeof(buffer), "Data e ora corrente: %Y-%m-%d %H:%M:%S", info);

    printf("%s\n", buffer);

    return 0;
}
