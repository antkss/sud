#include "mylog.h"
#include <stdio.h>
#include <stdarg.h>
void mylog(const char *format, ...) {
    FILE *file = fopen("log", "a");
    if (file) {
        va_list args;
        va_start(args, format);
        vfprintf(file, format, args);
        va_end(args);
        fprintf(file, "\n");
        fclose(file);
    }
}
