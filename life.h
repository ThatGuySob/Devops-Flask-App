#ifndef LIFE_H
#define LIFE_H

int count_alive(const char *field, int i, int j, int size);
void evolve(const char *field, char *t, int size);

#endif
