#include <stdio.h>
#include <string.h>
#include <ctype.h>

void generateTAC(const char *expr) {
    char op;
    double a, b;
    
    scanf(expr, "%lf %c %lf", &a, &op, &b);
    
    printf("t1 = %.2lf\n", a);
    printf("t2 = %.2lf\n", b);
    printf("t3 = t1 %c t2\n", op);
}

int main() {
    char expr[100];
    
    printf("Enter an expression (e.g., 5 + 3): ");
    fgets(expr, sizeof(expr), stdin);
    
    char *newline = strchr(expr, '\n');
    if (newline) {
        *newline = '\0';
    }
    
    printf("Three-address code representation:\n");
    generateTAC(expr);
    
    return 0;
}
